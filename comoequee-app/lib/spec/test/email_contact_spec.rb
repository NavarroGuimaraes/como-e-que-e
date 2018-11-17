describe EmailContact do
    context 'get email' do
        it 'get email from user' do
            test_1 = EmailContact.new
            expect(test_1.GetEmail()).to eql (!= Null)
        end
    end

    context 'correct email' do 
        it 'get email correct' do
            test_2 = EmailContact.new
            expect(test_2.GetEmail()).to eql (== test_1)
        end
    end
end

