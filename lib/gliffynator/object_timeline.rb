class Gliffynator::ObjectTimeline < Hash
  def self.id_usage
    4
  end

  def self.create(id, x, y, width=140, height=100, text="")
    {
      x: x,
      y: y,
      rotation: 0,
      id: id,
      width: width,
      height: height,
      uid: "com.gliffy.shape.uml.uml_v1.default.object_timeline",
      order: id,
      lockAspectRatio: false,
      lockShape: false,
      constraints: {
        constraints: [
          {
            type: "HeightConstraint",
            HeightConstraint: {
              isMin: true,
              heightInfo: [
                {
                  magnitude: 1,
                  id: id+1
                }
              ],
              minHeight: 0,
              growParent: false,
              padding: 0
            }
          }
        ]
      },
      linkMap: [],
      children: [
        {
          x: 0,
          y: 0,
          rotation: 0,
          id: id+1,
          width: 140,
          height: 18,
          uid: nil,
          order: id+1,
          lockAspectRatio: false,
          lockShape: false,
          constraints: {
            constraints: [
              {
                type: "HeightConstraint",
                HeightConstraint: {
                  isMin: false,
                  heightInfo: [
                    {
                      magnitude: 1,
                      id: id+2
                    }
                  ],
                  minHeight: 0,
                  growParent: true,
                  padding: 0
                }
              }
            ]
          },
          graphic: {
            type: "Shape",
            Shape: {
              tid: "com.gliffy.stencil.rectangle.basic_v1",
              strokeWidth: 2,
              strokeColor: "#999999",
              fillColor: "#FFF2CC",
              gradient: false,
              dashStyle: nil,
              dropShadow: false,
              state: 0,
              opacity: 1.0,
              shadowX: 4.0,
              shadowY: 4.0
            }
          },
          children: [
            {
              x: 0,
              y: 0,
              rotation: 0,
              id: id+2,
              width: 140,
              height: 18,
              uid: nil,
              order: id+2,
              lockAspectRatio: false,
              lockShape: false,
              graphic: {
                type: "Text",
                Text: {
                  overflow: "none",
                  paddingTop: 2,
                  paddingRight: 2,
                  paddingBottom: 2,
                  paddingLeft: 2,
                  outerPaddingTop: 6,
                  outerPaddingRight: 6,
                  outerPaddingBottom: 2,
                  outerPaddingLeft: 6,
                  type: "fixed",
                  lineTValue: nil,
                  linePerpValue: nil,
                  cardinalityType: nil,
                  html: "<p style=\"text-align:center;\"><span style=\"font-weight:bold;text-decoration:underline;font-family:Arial;font-size:12px;\">"+text+"</span></p>",
                  tid: nil,
                  valign: "top",
                  vposition: "none",
                  hposition: "none"
                }
              },
              hidden: false,
              layerId: nil
            }
          ],
          hidden: false,
          layerId: nil
        },
        {
          x: 0,
          y: 18,
          rotation: 0,
          id: id+3,
          width: 140,
          height: 1282.0,
          uid: nil,
          order: id+3,
          lockAspectRatio: false,
          lockShape: false,
          constraints: {
            constraints: [
              {
                type: "HeightConstraint",
                HeightConstraint: {
                  isMin: false,
                  heightInfo: [
                    {
                      magnitude: 1,
                      id: id
                    },
                    {
                      magnitude: -1,
                      id: id+1
                    }
                  ],
                  minHeight: 0,
                  growParent: false,
                  padding: 0
                }
              },
              {
                type: "PositionConstraint",
                PositionConstraint: {
                  nodeId: id+1,
                  px: 0,
                  py: 1.0,
                  xOffset: 0,
                  yOffset: 0
                }
              }
            ]
          },
          graphic: {
            type: "Shape",
            Shape: {
              tid: "com.gliffy.stencil.object_timeline.uml_v1",
              strokeWidth: 2.0,
              strokeColor: "#999999",
              fillColor: "#fff2cc",
              gradient: false,
              dashStyle: nil,
              dropShadow: false,
              state: 0,
              opacity: 1.0,
              shadowX: 4.0,
              shadowY: 4.0
            }
          },
          hidden: false,
          layerId: nil
        }
      ],
      hidden: false,
      layerId: "C3WysuhtocNA"
    }
  end
end
