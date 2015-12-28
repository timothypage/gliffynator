class Gliffynator::Arrow < Hash

  def self.id_usage
    2
  end

  def self.create(id, x, y, length, direction, text=false)

    arrow = {
      x: x.to_f,
      y: y.to_f,
      rotation: 0.0,
      id: id,
      width: 143.5644622626777,
      height: 100.0,
      uid: "com.gliffy.shape.uml.uml_v1.default.message",
      order: id-1000,
      lockAspectRatio: false,
      lockShape: false,
      graphic: {
        type: "Line",
        Line: {
          strokeWidth: 1.0,
          strokeColor: "#000000",
          fillColor: "none",
          dashStyle: nil,
          startArrow: if direction == :left then 2 else 0 end,
          endArrow: if direction == :right then 2 else 0 end,
          startArrowRotation: "auto",
          endArrowRotation: "auto",
          interpolationType: "linear",
          cornerRadius: nil,
          controlPath: [
            [
              0.0,
              0.0
            ],
            [
              length,
              0.0
            ]
          ],
          lockSegments: [],
          ortho: false
        }
      },
      linkMap: [],
      children: [],
      hidden: false,
      layerId: "C3WysuhtocNA"
    }

    if text
      arrow[:children] << {
        x: 0.0,
        y: 0.0,
        rotation: 0.0,
        id: id+1,
        width: 6.4 * text.length,
        height: 14,
        uid: nil,
        order: "auto",
        lockAspectRatio: false,
        lockShape: false,
        graphic: {
          type: "Text",
          Text: {
            overflow: "both",
            paddingTop: 2,
            paddingright: 2,
            paddingBottom: 2,
            paddingLeft: 2,
            outerPaddingTop: 6,
            outerPaddingRight: 6,
            outerPaddingBottom: 2,
            outerPaddingLeft: 6,
            type: "fixed",
            lineTValue: 0.48267771584556685,
            linePerpValue: 0.0,
            cardinalityType: nil,
            html: "<p style=\"text-align:center;\"><span style=\"font-family:Arial;font-size:12px;\"><span style=\"\">"+text+"</span></p>",
            tid: nil,
            valign: "middle",
            vposition: "none",
            hposition: "none"
          }
        },
        children: [],
        hidden: false,
        layerId: "C3WysuhtocNA"
      }
    end

    arrow
  end
end
