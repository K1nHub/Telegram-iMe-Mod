package com.smedialink.p031ui.chat;

import com.smedialink.manager.TelegramApi;
import com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.SessionTokens;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$TL_messages_requestUrlAuth;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChatPresenter.kt */
/* renamed from: com.smedialink.ui.chat.ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1 */
/* loaded from: classes3.dex */
public final class ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1 extends Lambda implements Function1<Boolean, ObservableSource<? extends Result<? extends SessionTokens>>> {
    final /* synthetic */ TLRPC$TL_messages_requestUrlAuth $buttonReq;
    final /* synthetic */ String $url;
    final /* synthetic */ ChatPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1(TLRPC$TL_messages_requestUrlAuth tLRPC$TL_messages_requestUrlAuth, ChatPresenter chatPresenter, String str) {
        super(1);
        this.$buttonReq = tLRPC$TL_messages_requestUrlAuth;
        this.this$0 = chatPresenter;
        this.$url = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<SessionTokens>> invoke(Boolean it) {
        WalletSessionInteractor walletSessionInteractor;
        TelegramApi telegramApi;
        Intrinsics.checkNotNullParameter(it, "it");
        if (this.$buttonReq != null) {
            telegramApi = this.this$0.telegramApi;
            Observable<String> acceptUrlAuth = telegramApi.acceptUrlAuth(this.$url, this.$buttonReq);
            final C19191 c19191 = new C19191(this.this$0);
            return acceptUrlAuth.flatMap(new Function() { // from class: com.smedialink.ui.chat.ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource invoke$lambda$0;
                    invoke$lambda$0 = ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1.invoke$lambda$0(Function1.this, obj);
                    return invoke$lambda$0;
                }
            });
        }
        walletSessionInteractor = this.this$0.walletSessionInteractor;
        return walletSessionInteractor.login(this.$url);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatPresenter.kt */
    /* renamed from: com.smedialink.ui.chat.ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1$1 */
    /* loaded from: classes3.dex */
    public static final class C19191 extends Lambda implements Function1<String, ObservableSource<? extends Result<? extends SessionTokens>>> {
        final /* synthetic */ ChatPresenter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19191(ChatPresenter chatPresenter) {
            super(1);
            this.this$0 = chatPresenter;
        }

        @Override // kotlin.jvm.functions.Function1
        public final ObservableSource<? extends Result<SessionTokens>> invoke(String authUrl) {
            WalletSessionInteractor walletSessionInteractor;
            Intrinsics.checkNotNullParameter(authUrl, "authUrl");
            walletSessionInteractor = this.this$0.walletSessionInteractor;
            return walletSessionInteractor.login(authUrl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource invoke$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }
}
