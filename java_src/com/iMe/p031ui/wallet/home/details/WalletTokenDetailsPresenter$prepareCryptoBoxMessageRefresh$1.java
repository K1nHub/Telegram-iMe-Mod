package com.iMe.p031ui.wallet.home.details;

import com.iMe.manager.TelegramApi;
import com.iMe.p031ui.wallet.home.details.WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.Pair;
import kotlin.TuplesKt;
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
/* compiled from: WalletTokenDetailsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1 */
/* loaded from: classes6.dex */
public final class WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1 extends Lambda implements Function1<TLRPC$Chat, ObservableSource<? extends Pair<? extends Boolean, ? extends Boolean>>> {
    final /* synthetic */ long $chatId;
    final /* synthetic */ boolean $isWithBotApiPrefix;
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1(WalletTokenDetailsPresenter walletTokenDetailsPresenter, boolean z, long j) {
        super(1);
        this.this$0 = walletTokenDetailsPresenter;
        this.$isWithBotApiPrefix = z;
        this.$chatId = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Pair<Boolean, Boolean>> invoke(final TLRPC$Chat chat) {
        TelegramApi telegramApi;
        Intrinsics.checkNotNullParameter(chat, "chat");
        telegramApi = this.this$0.telegramApi;
        Observable<TLRPC$ChatFull> fullChatInfoById = telegramApi.getFullChatInfoById(this.$isWithBotApiPrefix ? this.$chatId : -this.$chatId, chat);
        final C23861 c23861 = new C23861(this.this$0, chat);
        Observable<R> flatMap = fullChatInfoById.flatMap(new Function() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource invoke$lambda$0;
                invoke$lambda$0 = WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1.invoke$lambda$0(Function1.this, obj);
                return invoke$lambda$0;
            }
        });
        final Function1<Boolean, Pair<? extends Boolean, ? extends Boolean>> function1 = new Function1<Boolean, Pair<? extends Boolean, ? extends Boolean>>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Pair<Boolean, Boolean> invoke(Boolean it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return TuplesKt.m103to(it, Boolean.valueOf(TLRPC$Chat.this.creator));
            }
        };
        return flatMap.map(new Function() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Pair invoke$lambda$1;
                invoke$lambda$1 = WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1.invoke$lambda$1(Function1.this, obj);
                return invoke$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletTokenDetailsPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1 */
    /* loaded from: classes6.dex */
    public static final class C23861 extends Lambda implements Function1<TLRPC$ChatFull, ObservableSource<? extends Boolean>> {
        final /* synthetic */ TLRPC$Chat $chat;
        final /* synthetic */ WalletTokenDetailsPresenter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C23861(WalletTokenDetailsPresenter walletTokenDetailsPresenter, TLRPC$Chat tLRPC$Chat) {
            super(1);
            this.this$0 = walletTokenDetailsPresenter;
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
            WalletTokenDetailsPresenter walletTokenDetailsPresenter = this.this$0;
            boolean z2 = true;
            if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
                for (TLRPC$BotInfo tLRPC$BotInfo : arrayList) {
                    long j = tLRPC$BotInfo.user_id;
                    walletBotId = walletTokenDetailsPresenter.getWalletBotId();
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
            final C23871 c23871 = new C23871(this.this$0, this.$chat);
            return userInfoByUsername.flatMap(new Function() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource invoke$lambda$1;
                    invoke$lambda$1 = WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1.C23861.invoke$lambda$1(Function1.this, obj);
                    return invoke$lambda$1;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: WalletTokenDetailsPresenter.kt */
        /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1 */
        /* loaded from: classes6.dex */
        public static final class C23871 extends Lambda implements Function1<TLRPC$User, ObservableSource<? extends Boolean>> {
            final /* synthetic */ TLRPC$Chat $chat;
            final /* synthetic */ WalletTokenDetailsPresenter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C23871(WalletTokenDetailsPresenter walletTokenDetailsPresenter, TLRPC$Chat tLRPC$Chat) {
                super(1);
                this.this$0 = walletTokenDetailsPresenter;
                this.$chat = tLRPC$Chat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Boolean> invoke(TLRPC$User botUser) {
                TelegramApi telegramApi;
                Intrinsics.checkNotNullParameter(botUser, "botUser");
                telegramApi = this.this$0.telegramApi;
                TLRPC$Chat chat = this.$chat;
                Intrinsics.checkNotNullExpressionValue(chat, "chat");
                Observable<TLRPC$ChannelParticipant> chatParticipant = telegramApi.getChatParticipant(chat, botUser);
                final C23881 c23881 = new Function1<Throwable, TLRPC$ChannelParticipant>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter.prepareCryptoBoxMessageRefresh.1.1.1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final TLRPC$ChannelParticipant invoke(Throwable it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return new TLRPC$TL_channelParticipant();
                    }
                };
                Observable<TLRPC$ChannelParticipant> onErrorReturn = chatParticipant.onErrorReturn(new Function() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1$$ExternalSyntheticLambda0
                    @Override // io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        TLRPC$ChannelParticipant invoke$lambda$0;
                        invoke$lambda$0 = WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1.C23861.C23871.invoke$lambda$0(Function1.this, obj);
                        return invoke$lambda$0;
                    }
                });
                final C23892 c23892 = new Function1<TLRPC$ChannelParticipant, Boolean>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter.prepareCryptoBoxMessageRefresh.1.1.1.2
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
                return onErrorReturn.map(new Function() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1$$ExternalSyntheticLambda1
                    @Override // io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        Boolean invoke$lambda$1;
                        invoke$lambda$1 = WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1.C23861.C23871.invoke$lambda$1(Function1.this, obj);
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource invoke$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair invoke$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Pair) tmp0.invoke(obj);
    }
}
