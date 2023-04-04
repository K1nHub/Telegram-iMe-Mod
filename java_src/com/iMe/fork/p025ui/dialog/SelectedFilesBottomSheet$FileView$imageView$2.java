package com.iMe.fork.p025ui.dialog;

import android.widget.ImageView;
import com.iMe.fork.p025ui.dialog.SelectedFilesBottomSheet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectedFilesBottomSheet$FileView$imageView$2 */
/* loaded from: classes3.dex */
public final class SelectedFilesBottomSheet$FileView$imageView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ SelectedFilesBottomSheet.FileView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectedFilesBottomSheet$FileView$imageView$2(SelectedFilesBottomSheet.FileView fileView) {
        super(0);
        this.this$0 = fileView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initImageView;
        initImageView = this.this$0.initImageView();
        return initImageView;
    }
}
