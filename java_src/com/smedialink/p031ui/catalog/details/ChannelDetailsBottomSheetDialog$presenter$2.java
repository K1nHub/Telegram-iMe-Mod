package com.smedialink.p031ui.catalog.details;

import com.smedialink.model.catalog.CampaignItem;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: ChannelDetailsBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$presenter$2 */
/* loaded from: classes3.dex */
final class ChannelDetailsBottomSheetDialog$presenter$2 extends Lambda implements Function0<ChannelDetailsPresenter> {
    final /* synthetic */ CampaignItem $campaign;
    final /* synthetic */ TLRPC$Chat $chat;
    final /* synthetic */ ChannelDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelDetailsBottomSheetDialog$presenter$2(ChannelDetailsBottomSheetDialog channelDetailsBottomSheetDialog, CampaignItem campaignItem, TLRPC$Chat tLRPC$Chat) {
        super(0);
        this.this$0 = channelDetailsBottomSheetDialog;
        this.$campaign = campaignItem;
        this.$chat = tLRPC$Chat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChannelDetailsBottomSheetDialog.kt */
    /* renamed from: com.smedialink.ui.catalog.details.ChannelDetailsBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C18671 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ CampaignItem $campaign;
        final /* synthetic */ TLRPC$Chat $chat;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18671(CampaignItem campaignItem, TLRPC$Chat tLRPC$Chat) {
            super(0);
            this.$campaign = campaignItem;
            this.$chat = tLRPC$Chat;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.$campaign, this.$chat);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ChannelDetailsPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C1865xf609b581(this.this$0, null, new C18671(this.$campaign, this.$chat)));
        return (ChannelDetailsPresenter) lazy.getValue();
    }
}
