class Gliffynator::Actor < Hash

  def self.id_usage
    1
  end

  def self.create(id, x, y, width=38, height=59)
    {
      x: x,
      y: y,
      rotation: 0.0,
      id: id,
      width: width,
      height: height,
      uid: "com.gliffy.shape.uml.uml_v1.default.actor",
      order: id,
      lockAspectRatio: true,
      lockShape: false,
      graphic: {
        type: "Shape",
        Shape: {
          tid: "com.gliffy.stencil.actor.uml_v1",
          strokeWidth: 1,
          strokeColor: "#000000",
          fillColor: "#FFFFFF",
          gradient: false,
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
