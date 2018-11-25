# frozen_string_literal: true

require File.expand_path(File.dirname(__FILE__) + '/../../tutorials_controller')
describe TutorialsController do
  context 'get tutorial in order' do
    it 'get tutorial list in order' do
      expect(TutorialsController.index()).kind_of (Array)
    end
  end
end
