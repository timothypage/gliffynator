require 'spec_helper'

describe Gliffynator::Diagram do
  describe '#initialize' do
  end

  describe '#add_arrow' do
    let(:diagram) do
      diagram = Gliffynator::Diagram.new
      diagram.add_arrow 50, 50, 100, :right, "Sample Text"
      diagram
    end

    it "should add the object" do
      expect( diagram.objects.first[:x] ).to eq( 50.to_f )
    end

    it "should set object order" do
      expect( diagram.objects.first[:order] ).to eq( 1 )
    end

    it "should set object id" do
      expect( diagram.objects.first[:id] ).to be( 1001 )
    end
  end

  describe "DSL" do
    it "should allow block syntax" do
      diagram = Gliffynator::Diagram.new do
        add_arrow 50, 50, 100, :right, "Sample Text"
      end

      expect( diagram.objects.first[:uid] ).to eq( "com.gliffy.shape.uml.uml_v1.default.message" )
    end
  end

end
