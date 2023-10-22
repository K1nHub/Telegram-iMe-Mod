package com.iMe.p030ui.catalog.details;

import android.net.Uri;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: ChannelDetailsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.catalog.details.ChannelDetailsView */
/* loaded from: classes3.dex */
public interface ChannelDetailsView extends BaseView {
    @OneExecution
    void onSubscribedToChannel(Uri uri);

    void setupCampaignInfo(CampaignItem campaignItem);

    void setupSubscribeButton(boolean z);

    @OneExecution
    void showChannelQr(long j);

    @OneExecution
    void showShareDialog(String str);
}
