package com.iMe.p031ui.catalog.details;

import android.net.Uri;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringBuilderKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLRPC$Chat;
import timber.log.Timber;
/* compiled from: ChannelDetailsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.catalog.details.ChannelDetailsPresenter */
/* loaded from: classes3.dex */
public final class ChannelDetailsPresenter extends BasePresenter<ChannelDetailsView> {
    private final CampaignItem campaign;
    private final TLRPC$Chat chat;
    private final SchedulersProvider schedulersProvider;
    private final TelegramApi telegramApi;
    private final TelegramControllersGateway telegramControllersGateway;

    public ChannelDetailsPresenter(CampaignItem campaign, TLRPC$Chat chat, SchedulersProvider schedulersProvider, TelegramApi telegramApi, TelegramControllersGateway telegramControllersGateway) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Intrinsics.checkNotNullParameter(chat, "chat");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        this.campaign = campaign;
        this.chat = chat;
        this.schedulersProvider = schedulersProvider;
        this.telegramApi = telegramApi;
        this.telegramControllersGateway = telegramControllersGateway;
    }

    public final void onSubscribeClick() {
        TelegramApi telegramApi = this.telegramApi;
        String str = this.chat.username;
        if (str == null) {
            return;
        }
        Observable<TLRPC$Chat> observeOn = telegramApi.getChatInfoByUsername(str).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi.getChatInfoB…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final Function1<TLRPC$Chat, ObservableSource<? extends Boolean>> function1 = new Function1<TLRPC$Chat, ObservableSource<? extends Boolean>>() { // from class: com.iMe.ui.catalog.details.ChannelDetailsPresenter$onSubscribeClick$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Boolean> invoke(TLRPC$Chat it) {
                Observable subscriptionStatusChangeObservable;
                Intrinsics.checkNotNullParameter(it, "it");
                subscriptionStatusChangeObservable = ChannelDetailsPresenter.this.getSubscriptionStatusChangeObservable(it);
                return subscriptionStatusChangeObservable;
            }
        };
        Observable flatMap = withLoadingDialog$default.flatMap(new Function() { // from class: com.iMe.ui.catalog.details.ChannelDetailsPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource onSubscribeClick$lambda$0;
                onSubscribeClick$lambda$0 = ChannelDetailsPresenter.onSubscribeClick$lambda$0(Function1.this, obj);
                return onSubscribeClick$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "fun onSubscribeClick() {…     .autoDispose()\n    }");
        Disposable subscribe = flatMap.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Boolean, Unit>() { // from class: com.iMe.ui.catalog.details.ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                m1349invoke(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1349invoke(Boolean it) {
                CampaignItem campaignItem;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Boolean bool = it;
                if (!bool.booleanValue()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("https://t.me/");
                    campaignItem = ChannelDetailsPresenter.this.campaign;
                    sb.append(campaignItem.getShortname());
                    Uri parse = Uri.parse(sb.toString());
                    Intrinsics.checkNotNullExpressionValue(parse, "parse(Constants.Telegram…INT + campaign.shortname)");
                    ((ChannelDetailsView) ChannelDetailsPresenter.this.getViewState()).onSubscribedToChannel(parse);
                }
                ((ChannelDetailsView) ChannelDetailsPresenter.this.getViewState()).setupSubscribeButton(bool.booleanValue());
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.catalog.details.ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource onSubscribeClick$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final void shareChannelLink() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.campaign.getTitle());
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        if (this.campaign.getDescription().length() > 0) {
            sb.append(this.campaign.getDescription());
            Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
            sb.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        }
        StringsKt__StringBuilderKt.append(sb, "https://", TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).linkPrefix, "/", this.campaign.getShortname());
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply {\n…   )\n        }.toString()");
        ((ChannelDetailsView) getViewState()).showShareDialog(sb2);
    }

    public final void copyChannelLink() {
        String string = LocaleController.getString("LinkCopied", C3419R.string.LinkCopied);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"LinkCopied\", R.string.LinkCopied)");
        ContextExtKt.copyToClipboard("https://" + TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).linkPrefix + '/' + this.campaign.getShortname(), string);
    }

    public final void createChannelQr() {
        ((ChannelDetailsView) getViewState()).showChannelQr(this.chat.f1518id);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ChannelDetailsView channelDetailsView = (ChannelDetailsView) getViewState();
        channelDetailsView.setupCampaignInfo(this.campaign);
        channelDetailsView.setupSubscribeButton(canSubscribe(this.chat));
    }

    private final boolean canSubscribe(TLRPC$Chat tLRPC$Chat) {
        return ChatObject.isNotInChat(tLRPC$Chat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Boolean> getSubscriptionStatusChangeObservable(TLRPC$Chat tLRPC$Chat) {
        Observable<TLRPC$Chat> unsubscribeFromChannel;
        final boolean canSubscribe = canSubscribe(tLRPC$Chat);
        if (canSubscribe) {
            unsubscribeFromChannel = this.telegramApi.subscribeToChannel(tLRPC$Chat);
        } else {
            unsubscribeFromChannel = this.telegramApi.unsubscribeFromChannel(tLRPC$Chat);
        }
        final Function1<TLRPC$Chat, Boolean> function1 = new Function1<TLRPC$Chat, Boolean>() { // from class: com.iMe.ui.catalog.details.ChannelDetailsPresenter$getSubscriptionStatusChangeObservable$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(TLRPC$Chat it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(!canSubscribe);
            }
        };
        Observable map = unsubscribeFromChannel.map(new Function() { // from class: com.iMe.ui.catalog.details.ChannelDetailsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Boolean subscriptionStatusChangeObservable$lambda$4;
                subscriptionStatusChangeObservable$lambda$4 = ChannelDetailsPresenter.getSubscriptionStatusChangeObservable$lambda$4(Function1.this, obj);
                return subscriptionStatusChangeObservable$lambda$4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "isNotSubscribed = canSub…ubscribed.not()\n        }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean getSubscriptionStatusChangeObservable$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Boolean) tmp0.invoke(obj);
    }
}
