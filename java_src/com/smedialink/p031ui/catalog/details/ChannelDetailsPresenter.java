package com.smedialink.p031ui.catalog.details;

import android.net.Uri;
import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.manager.TelegramApi;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.utils.extentions.common.ContextExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringBuilderKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLRPC$Chat;
import timber.log.Timber;
/* compiled from: ChannelDetailsPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.catalog.details.ChannelDetailsPresenter */
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
        Observable<TLRPC$Chat> observeOn = telegramApi.getChatInfoByUsername(str).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi.getChatInfoB…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable flatMap = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).flatMap(new Function() { // from class: com.smedialink.ui.catalog.details.ChannelDetailsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1418onSubscribeClick$lambda0;
                m1418onSubscribeClick$lambda0 = ChannelDetailsPresenter.m1418onSubscribeClick$lambda0(ChannelDetailsPresenter.this, (TLRPC$Chat) obj);
                return m1418onSubscribeClick$lambda0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "telegramApi.getChatInfoB…tusChangeObservable(it) }");
        Disposable subscribe = flatMap.subscribe(new Consumer() { // from class: com.smedialink.ui.catalog.details.ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                CampaignItem campaignItem;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Boolean bool = (Boolean) it;
                if (!bool.booleanValue()) {
                    campaignItem = ChannelDetailsPresenter.this.campaign;
                    Uri parse = Uri.parse(Intrinsics.stringPlus("https://t.me/", campaignItem.getShortname()));
                    Intrinsics.checkNotNullExpressionValue(parse, "parse(Constants.Telegram…INT + campaign.shortname)");
                    ((ChannelDetailsView) ChannelDetailsPresenter.this.getViewState()).onSubscribedToChannel(parse);
                }
                ((ChannelDetailsView) ChannelDetailsPresenter.this.getViewState()).setupSubscribeButton(bool.booleanValue());
            }
        }, new Consumer() { // from class: com.smedialink.ui.catalog.details.ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSubscribeClick$lambda-0  reason: not valid java name */
    public static final ObservableSource m1418onSubscribeClick$lambda0(ChannelDetailsPresenter this$0, TLRPC$Chat it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        return this$0.getSubscriptionStatusChangeObservable(it);
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
        StringsKt__StringBuilderKt.append(sb, "https://", TelegramControllersGateway.DefaultImpls.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).linkPrefix, "/", this.campaign.getShortname());
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply {\n…   )\n        }.toString()");
        ((ChannelDetailsView) getViewState()).showShareDialog(sb2);
    }

    public final void copyChannelLink() {
        String string = LocaleController.getString("LinkCopied", C3158R.string.LinkCopied);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"LinkCopied\", R.string.LinkCopied)");
        ContextExtKt.copyToClipboard("https://" + ((Object) TelegramControllersGateway.DefaultImpls.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).linkPrefix) + '/' + this.campaign.getShortname(), string);
    }

    public final void createChannelQr() {
        ((ChannelDetailsView) getViewState()).showChannelQr(this.chat.f1494id);
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

    private final Observable<Boolean> getSubscriptionStatusChangeObservable(TLRPC$Chat tLRPC$Chat) {
        Observable<TLRPC$Chat> unsubscribeFromChannel;
        final boolean canSubscribe = canSubscribe(tLRPC$Chat);
        if (canSubscribe) {
            unsubscribeFromChannel = this.telegramApi.subscribeToChannel(tLRPC$Chat);
        } else {
            unsubscribeFromChannel = this.telegramApi.unsubscribeFromChannel(tLRPC$Chat);
        }
        Observable map = unsubscribeFromChannel.map(new Function() { // from class: com.smedialink.ui.catalog.details.ChannelDetailsPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Boolean m1417getSubscriptionStatusChangeObservable$lambda4;
                m1417getSubscriptionStatusChangeObservable$lambda4 = ChannelDetailsPresenter.m1417getSubscriptionStatusChangeObservable$lambda4(canSubscribe, (TLRPC$Chat) obj);
                return m1417getSubscriptionStatusChangeObservable$lambda4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "if (isNotSubscribed) {\n …ubscribed.not()\n        }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getSubscriptionStatusChangeObservable$lambda-4  reason: not valid java name */
    public static final Boolean m1417getSubscriptionStatusChangeObservable$lambda4(boolean z, TLRPC$Chat it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(!z);
    }
}
