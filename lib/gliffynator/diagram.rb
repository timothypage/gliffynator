require 'json'

class Gliffynator::Diagram

  include Gliffynator::DSL

  attr_accessor :diagram
  attr_accessor :objects

  def initialize(options={}, &block)

    @objects = Gliffynator::Objects.new

    @diagram = {
      contentType: "application/gliffy+json",
      version: "1.3",
      stage: {
        background: "#ffffff",
        width: 1248,
        height: 1450,
        nodeIndex: 1661,
        autoFit: true,
        exportBorder: false,
        gridOn: false,
        snapToGrid: false,
        drawingGuidesOn: false,
        pageBreaksOn: false,
        printGridOn: false,
        printPaper: "LETTER",
        maxWidth: 5000,
        maxHeight: 5000,
        themeData: nil,
        viewportType: "default",
        fitBB: {
          min: {
            x: 15,
            y: 14
          },
          max: {
            x: 1247.5,
            y: 1450
          }
        },
        printModel: {
          pageSize: "a4",
          portrait: false,
          fitToOnePage: true,
          displayPageBreaks: false
        },
        objects: @objects,
        layers: [
          {
            guid: "C3WysuhtocNA",
            order: 0,
            name: "Layer 0",
            active: true,
            locked: false,
            visible: true,
            nodeIndex: 185
          }
        ],
        shapeStyles: {},
        lineStyles: {},
        textStyles: {
          global: {
            bold: false,
            underline: false
          }
        }
      },
      metadata: {
        title: "untitled",
        revision: 0,
        exportBorder: false,
        loadPosition: "default",
        libraries: [
          "com.gliffy.libraries.uml.uml_v1.default",
          "com.gliffy.libraries.erd.erd_v1.default",
          "com.gliffy.libraries.basic.basic_v1.default",
          "com.gliffy.libraries.images"
        ],
        lastSerialized: DateTime.now.strftime("%Q"),
        analyticsProduct: "Confluence"
      },
      embeddedResources: {
        index: 0,
        resources: []
      }
    }.merge options

    self.instance_eval(&block) if block

    self
  end

  def render
    @diagram.to_json
  end
end
