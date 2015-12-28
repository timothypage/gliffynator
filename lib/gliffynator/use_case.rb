class Gliffynator::UseCase < Hash
  def self.id_usage
    1
  end

  def self.create(id, x, y, width=140, height=70)
    {
      x: x,
      y: y,
      rotation: 0,
      id: id,
      width: width,
      height: height,
      uid: "com.gliffy.shape.uml.uml_v1.default.use_case",
      order: id,
      lockAspectRatio: true,
      lockShape: false,
      graphic: {
        type: "Shape",
        Shape: {
          tid: "com.gliffy.stencil.ellipse.basic_v1",
          strokeWidth: 1.0,
          strokeColor: "#000000",
          fillColor: "#FFFFFF",
          gradient: false,
          dashStyle: nil,
          dropShadow: false,
          state: 0,
          opacity: 1,
          shadowX: 0,
          shadowY: 0
        }
      },
      linkMap: [],
      children: [],
      hidden: false,
      layerId: "C3WysuhtocNA"
    }
  end
end
