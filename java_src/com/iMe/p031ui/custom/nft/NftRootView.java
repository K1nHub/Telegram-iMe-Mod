package com.iMe.p031ui.custom.nft;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftRootView.kt */
/* renamed from: com.iMe.ui.custom.nft.NftRootView */
/* loaded from: classes3.dex */
public final class NftRootView extends FrameLayout {
    private NftToken nftToken;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NftRootView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NftRootView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NftRootView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final NftToken getNftToken() {
        return this.nftToken;
    }

    public final void setNftToken(NftToken nftToken) {
        this.nftToken = nftToken;
    }
}
