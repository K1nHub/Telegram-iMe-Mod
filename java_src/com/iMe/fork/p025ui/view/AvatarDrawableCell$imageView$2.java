package com.iMe.fork.p025ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.BackupImageView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AvatarDrawableCell.kt */
/* renamed from: com.iMe.fork.ui.view.AvatarDrawableCell$imageView$2 */
/* loaded from: classes3.dex */
public final class AvatarDrawableCell$imageView$2 extends Lambda implements Function0<BackupImageView> {
    final /* synthetic */ AvatarDrawableCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarDrawableCell$imageView$2(AvatarDrawableCell avatarDrawableCell) {
        super(0);
        this.this$0 = avatarDrawableCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final BackupImageView invoke() {
        BackupImageView initBackupImageView;
        initBackupImageView = this.this$0.initBackupImageView();
        return initBackupImageView;
    }
}
