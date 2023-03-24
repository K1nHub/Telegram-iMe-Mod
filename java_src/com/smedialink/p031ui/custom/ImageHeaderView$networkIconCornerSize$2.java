package com.smedialink.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3301R;
/* compiled from: ImageHeaderView.kt */
/* renamed from: com.smedialink.ui.custom.ImageHeaderView$networkIconCornerSize$2 */
/* loaded from: classes3.dex */
final class ImageHeaderView$networkIconCornerSize$2 extends Lambda implements Function0<Float> {
    final /* synthetic */ ImageHeaderView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageHeaderView$networkIconCornerSize$2(ImageHeaderView imageHeaderView) {
        super(0);
        this.this$0 = imageHeaderView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        return Float.valueOf(this.this$0.getResources().getDimension(C3301R.dimen.icon_size_medium) / 2);
    }
}
