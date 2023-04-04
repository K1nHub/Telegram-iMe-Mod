package org.telegram.p048ui.Components;

import com.iMe.p032ui.kikliko.EmojiViewPresenter;
import java.util.ArrayList;
import java.util.List;
import moxy.MvpPresenter;
import moxy.presenter.PresenterField;
/* renamed from: org.telegram.ui.Components.EmojiView$$PresentersBinder */
/* loaded from: classes6.dex */
public class EmojiView$$PresentersBinder extends moxy.PresenterBinder<EmojiView> {
    @Override // moxy.PresenterBinder
    public List<PresenterField<? super EmojiView>> getPresenterFields() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new PresenterBinder(this));
        return arrayList;
    }

    /* compiled from: EmojiView$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.Components.EmojiView$$PresentersBinder$PresenterBinder */
    /* loaded from: classes6.dex */
    public class PresenterBinder extends PresenterField<EmojiView> {
        public PresenterBinder(EmojiView$$PresentersBinder emojiView$$PresentersBinder) {
            super("presenter", null, EmojiViewPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(EmojiView emojiView, MvpPresenter mvpPresenter) {
            emojiView.presenter = (EmojiViewPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(EmojiView emojiView) {
            return emojiView.providePresenter();
        }
    }
}
