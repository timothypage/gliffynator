class Gliffynator::Activation < Hash
  def self.id_usage

  end

  def self.create(id, x, y, width=10, height=100)
    {
      x: x,
      y: y,
      rotation: 0,
      id: id,
      uid: "com.gliffy.shape.uml.uml_v1.default.activation",
      width: width,
      height: 100,
      lockAspectRatio: false,
      lockShape: false,
      order: id,
      graphic: {
        type: "Shape",
        Shape: {
          tid: "com.gliffy.stencil.rectangle.basic_v1",
          strokeWidth: 1,
          strokeColor: "#000000",
          fillColor: "#FFFFFF",
          gradient: false,
          dropShadow: false,
          state: 0,
          shadowX: 0,
          shadowY: 0,
          opacity: 1
        }
      },
      children: nil,
      linkMap: []
    }
  end
end
