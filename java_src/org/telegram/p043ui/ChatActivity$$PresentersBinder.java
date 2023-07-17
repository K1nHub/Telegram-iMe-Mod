package org.telegram.p043ui;

import com.iMe.p031ui.chat.ChatPresenter;
import java.util.ArrayList;
import java.util.List;
import moxy.MvpPresenter;
import moxy.presenter.PresenterField;
/* renamed from: org.telegram.ui.ChatActivity$$PresentersBinder */
/* loaded from: classes5.dex */
public class ChatActivity$$PresentersBinder extends moxy.PresenterBinder<ChatActivity> {
    @Override // moxy.PresenterBinder
    public List<PresenterField<? super ChatActivity>> getPresenterFields() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new PresenterBinder(this));
        return arrayList;
    }

    /* compiled from: ChatActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.ChatActivity$$PresentersBinder$PresenterBinder */
    /* loaded from: classes5.dex */
    public class PresenterBinder extends PresenterField<ChatActivity> {
        public PresenterBinder(ChatActivity$$PresentersBinder chatActivity$$PresentersBinder) {
            super("presenter", null, ChatPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(ChatActivity chatActivity, MvpPresenter mvpPresenter) {
            chatActivity.presenter = (ChatPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(ChatActivity chatActivity) {
            return chatActivity.providePresenter();
        }
    }
}
