package com.iMe.p030ui.wallet.crypto.create.secret_words_count;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: SecretWordsCountAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountAdapter */
/* loaded from: classes3.dex */
public final class SecretWordsCountAdapter extends BaseQuickAdapter<Integer, BaseViewHolder> {
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Integer num) {
        convert(baseViewHolder, num.intValue());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecretWordsCountAdapter(ResourceManager resourceManager) {
        super(C3632R.layout.fork_recycle_item_wallet_secret_words_count, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    protected void convert(BaseViewHolder holder, int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        int i2 = C3632R.C3635id.text_words_count;
        BaseQuickAdapterExtKt.setThemedTextColor(BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setRippleForeground(holder, i2, false), i2, Theme.key_windowBackgroundWhite), i2, Theme.key_dialogTextBlack).setText(i2, this.resourceManager.getString(C3632R.string.wallet_import_words_count, Integer.valueOf(i)));
    }
}
