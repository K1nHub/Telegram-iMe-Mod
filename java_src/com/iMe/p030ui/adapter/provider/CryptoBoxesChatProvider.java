package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.cryptobox.CryptoBoxesChatItem;
import com.iMe.p030ui.custom.TitledInputFieldView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LinkActionView;
/* compiled from: CryptoBoxesChatProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoBoxesChatProvider */
/* loaded from: classes.dex */
public final class CryptoBoxesChatProvider extends BaseNodeProvider<CryptoBoxesChatItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public CryptoBoxesChatProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.CRYPTOBOXES_CHAT;
        this.layoutId = C3632R.layout.fork_recycle_item_cryptoboxes_chat;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, final CryptoBoxesChatItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3632R.C3635id.text_description;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, Theme.key_windowBackgroundWhiteGrayText2).setText(i, this.resourceManager.getString(C3632R.string.cryptoboxes_chat_filter_description)), C3632R.C3635id.input_chat, new Function1<TitledInputFieldView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxesChatProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TitledInputFieldView titledInputFieldView) {
                invoke2(titledInputFieldView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(TitledInputFieldView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                String string = LocaleController.getString("AccDescrChannel", C3632R.string.AccDescrChannel);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"AccDescrChann…R.string.AccDescrChannel)");
                applyForView.setTitle(string);
                LinkActionView inputView = applyForView.getInputView();
                CryptoBoxesChatItem cryptoBoxesChatItem = CryptoBoxesChatItem.this;
                inputView.hideAllActionButtons(true);
                inputView.setMode(false);
                inputView.setOptionsViewIcon(C3632R.C3634drawable.msg_channel);
                inputView.setAvatar(cryptoBoxesChatItem.getChat());
                inputView.setText(cryptoBoxesChatItem.getChat().title);
                inputView.setFieldEnabled(false);
                applyForView.setupColors();
            }
        });
    }
}
