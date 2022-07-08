# frozen_string_literal: true

require 'rails_helper'

describe RentalPresenter do
  describe '#status' do
    subject { RentalPresenter.new(rental).status }

    context 'should render yellow when scheduled' do
      let(:rental) { build(:rental, status: :scheduled) }
      it { is_expected.to eq('<span class="badge bg-warning">agendada</span>') }
    end

    context 'should render blue when ongoing' do
      let(:rental) { build(:rental, status: :ongoing) }
      it { is_expected.to eq('<span class="badge bg-primary">em andamento</span>') }
    end

    context 'should render green when finalized' do
      let(:rental) { build(:rental, status: :finalized) }
      it { is_expected.to eq('<span class="badge bg-success">finalizada</span>') }
    end

    context 'should render grey when in review' do
      let(:rental) { build(:rental, status: :in_review) }
      it { is_expected.to eq('<span class="badge bg-secondary">em revisão</span>') }
    end

    context 'should render nothing when status nil' do
      let(:rental) { build(:rental, status: nil) }
      it { is_expected.to be_empty }
    end
  end
end
