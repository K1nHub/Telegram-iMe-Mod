package com.iMe.p031ui.catalog.details;

import android.net.Uri;
import com.iMe.model.catalog.CampaignItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.catalog.details.ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2008x14036c9b extends Lambda implements Function1<Boolean, Unit> {
    final /* synthetic */ ChannelDetailsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2008x14036c9b(ChannelDetailsPresenter channelDetailsPresenter) {
        super(1);
        this.this$0 = channelDetailsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
        m1331invoke(bool);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1331invoke(Boolean it) {
        CampaignItem campaignItem;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Boolean bool = it;
        if (!bool.booleanValue()) {
            StringBuilder sb = new StringBuilder();
            sb.append("https://t.me/");
            campaignItem = this.this$0.campaign;
            sb.append(campaignItem.getShortname());
            Uri parse = Uri.parse(sb.toString());
            Intrinsics.checkNotNullExpressionValue(parse, "parse(Constants.Telegram…INT + campaign.shortname)");
            ((ChannelDetailsView) this.this$0.getViewState()).onSubscribedToChannel(parse);
        }
        ((ChannelDetailsView) this.this$0.getViewState()).setupSubscribeButton(bool.booleanValue());
    }
}
