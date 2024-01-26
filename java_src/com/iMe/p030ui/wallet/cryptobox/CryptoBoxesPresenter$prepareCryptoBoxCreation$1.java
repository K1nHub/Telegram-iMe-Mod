package com.iMe.p030ui.wallet.cryptobox;

import com.iMe.manager.TelegramApi;
import com.iMe.p030ui.wallet.cryptobox.CryptoBoxesPresenter$prepareCryptoBoxCreation$1;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$BotInfo;
import org.telegram.tgnet.TLRPC$ChannelParticipant;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$TL_channelParticipant;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$User;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoBoxesPresenter.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$prepareCryptoBoxCreation$1 */
/* loaded from: classes4.dex */
public final class CryptoBoxesPresenter$prepareCryptoBoxCreation$1 extends Lambda implements Function1<TLRPC$ChatFull, ObservableSource<? extends Boolean>> {
    final /* synthetic */ TLRPC$Chat $chat;
    final /* synthetic */ CryptoBoxesPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoBoxesPresenter$prepareCryptoBoxCreation$1(CryptoBoxesPresenter cryptoBoxesPresenter, TLRPC$Chat tLRPC$Chat) {
        super(1);
        this.this$0 = cryptoBoxesPresenter;
        this.$chat = tLRPC$Chat;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Boolean> invoke(TLRPC$ChatFull chatFull) {
        long walletBotId;
        boolean z;
        TelegramApi telegramApi;
        String walletBotUsername;
        Intrinsics.checkNotNullParameter(chatFull, "chatFull");
        ArrayList<TLRPC$BotInfo> arrayList = chatFull.bot_info;
        Intrinsics.checkNotNullExpressionValue(arrayList, "chatFull.bot_info");
        CryptoBoxesPresenter cryptoBoxesPresenter = this.this$0;
        boolean z2 = true;
        if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
            for (TLRPC$BotInfo tLRPC$BotInfo : arrayList) {
                long j = tLRPC$BotInfo.user_id;
                walletBotId = cryptoBoxesPresenter.getWalletBotId();
                if (j == walletBotId) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    break;
                }
            }
        }
        z2 = false;
        if (!z2) {
            Observable just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        telegramApi = this.this$0.telegramApi;
        walletBotUsername = this.this$0.getWalletBotUsername();
        Observable<TLRPC$User> userInfoByUsername = telegramApi.getUserInfoByUsername(walletBotUsername);
        final C21911 c21911 = new C21911(this.this$0, this.$chat);
        return userInfoByUsername.flatMap(new Function() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$prepareCryptoBoxCreation$1$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource invoke$lambda$1;
                invoke$lambda$1 = CryptoBoxesPresenter$prepareCryptoBoxCreation$1.invoke$lambda$1(Function1.this, obj);
                return invoke$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CryptoBoxesPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1 */
    /* loaded from: classes4.dex */
    public static final class C21911 extends Lambda implements Function1<TLRPC$User, ObservableSource<? extends Boolean>> {
        final /* synthetic */ TLRPC$Chat $chat;
        final /* synthetic */ CryptoBoxesPresenter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21911(CryptoBoxesPresenter cryptoBoxesPresenter, TLRPC$Chat tLRPC$Chat) {
            super(1);
            this.this$0 = cryptoBoxesPresenter;
            this.$chat = tLRPC$Chat;
        }

        @Override // kotlin.jvm.functions.Function1
        public final ObservableSource<? extends Boolean> invoke(TLRPC$User botUser) {
            TelegramApi telegramApi;
            Intrinsics.checkNotNullParameter(botUser, "botUser");
            telegramApi = this.this$0.telegramApi;
            Observable<TLRPC$ChannelParticipant> chatParticipant = telegramApi.getChatParticipant(this.$chat, botUser);
            final C21921 c21921 = new Function1<Throwable, TLRPC$ChannelParticipant>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter.prepareCryptoBoxCreation.1.1.1
                @Override // kotlin.jvm.functions.Function1
                public final TLRPC$ChannelParticipant invoke(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TLRPC$TL_channelParticipant();
                }
            };
            Observable<TLRPC$ChannelParticipant> onErrorReturn = chatParticipant.onErrorReturn(new Function() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    TLRPC$ChannelParticipant invoke$lambda$0;
                    invoke$lambda$0 = CryptoBoxesPresenter$prepareCryptoBoxCreation$1.C21911.invoke$lambda$0(Function1.this, obj);
                    return invoke$lambda$0;
                }
            });
            final C21932 c21932 = new Function1<TLRPC$ChannelParticipant, Boolean>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter.prepareCryptoBoxCreation.1.1.2
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(TLRPC$ChannelParticipant it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = it.admin_rights;
                    boolean z = false;
                    if (tLRPC$TL_chatAdminRights != null && tLRPC$TL_chatAdminRights.flags == 0) {
                        z = true;
                    }
                    return Boolean.valueOf(!z);
                }
            };
            return onErrorReturn.map(new Function() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    Boolean invoke$lambda$1;
                    invoke$lambda$1 = CryptoBoxesPresenter$prepareCryptoBoxCreation$1.C21911.invoke$lambda$1(Function1.this, obj);
                    return invoke$lambda$1;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final TLRPC$ChannelParticipant invoke$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (TLRPC$ChannelParticipant) tmp0.invoke(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Boolean invoke$lambda$1(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (Boolean) tmp0.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource invoke$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }
}
