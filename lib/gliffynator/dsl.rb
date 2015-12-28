module Gliffynator
  module DSL
    def get_id_and_increment(klass)
      id = self.objects.global_id_counter
      self.objects.global_id_counter += klass.id_usage || 1

      id
    end

    def add_arrow(*args)
      id = get_id_and_increment(Gliffynator::Arrow)
      self.objects << Gliffynator::Arrow.create(id, *args)
    end

    def actor(*args)
      self.objects << Gliffynator::Actor.create(
        get_id_and_increment(Gliffynator::Actor),
        *args
      )
    end

    def method_missing(m, *args, &block)
      begin
        class_name = "Gliffynator::" + m.to_s.split("_").collect(&:capitalize).join
        klass = instance_eval(class_name)

        self.objects << klass.create(
          get_id_and_increment(klass),
          *args
        )
      rescue NameError
        raise NoMethodError, "Unknown shape #{class_name}"
      end
    end

  end
end
