require "tutorials_controller"
describe TutorialsController do
    context 'get tutorial in order' do
        it 'get tutorial list in order' do
        expect(TutorialsController.index()).kind_of (Array)
        end
    end
end


