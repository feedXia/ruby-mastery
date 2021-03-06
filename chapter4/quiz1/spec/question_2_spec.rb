require "mastery_answer_code_quality"

describe "Q2. Sum ODD integers" do
  let(:expected) { "15625\n" }

  it "calculates 1 + 3 + 5... + 249 and `puts`es the result" do
    expect { load "questions/question_2.rb" }
      .to output(/#{expected}$/).to_stdout
  end

  it "has acceptable code quality" do
    code_quality = MasteryAnswerCodeQuality.build(__FILE__)
    expect(code_quality.acceptable?).to(eq(true), code_quality.problems)
  end
end
