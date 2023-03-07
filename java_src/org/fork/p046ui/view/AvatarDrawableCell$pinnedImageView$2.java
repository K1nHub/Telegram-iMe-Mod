package org.fork.p046ui.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AvatarDrawableCell.kt */
/* renamed from: org.fork.ui.view.AvatarDrawableCell$pinnedImageView$2 */
/* loaded from: classes4.dex */
public final class AvatarDrawableCell$pinnedImageView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ AvatarDrawableCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarDrawableCell$pinnedImageView$2(AvatarDrawableCell avatarDrawableCell) {
        super(0);
        this.this$0 = avatarDrawableCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initPinnedImageView;
        initPinnedImageView = this.this$0.initPinnedImageView();
        return initPinnedImageView;
    }
}
