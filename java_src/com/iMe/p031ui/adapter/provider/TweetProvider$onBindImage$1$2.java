package com.iMe.p031ui.adapter.provider;

import android.graphics.drawable.Drawable;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkRecylcerImageItemBinding;
/* compiled from: TweetProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TweetProvider$onBindImage$1$2 */
/* loaded from: classes.dex */
final class TweetProvider$onBindImage$1$2 extends Lambda implements Function1<Drawable, Unit> {
    final /* synthetic */ ForkRecylcerImageItemBinding $this_apply;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TweetProvider$onBindImage$1$2(ForkRecylcerImageItemBinding forkRecylcerImageItemBinding) {
        super(1);
        this.$this_apply = forkRecylcerImageItemBinding;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Drawable drawable) {
        invoke2(drawable);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Drawable drawable) {
        ConstraintLayout root = this.$this_apply.errorBlock.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "errorBlock.root");
        ViewExtKt.gone$default(root, false, 1, null);
        Unit unit = Unit.INSTANCE;
        ProgressBar progressBar = this.$this_apply.progressBar;
        Intrinsics.checkNotNullExpressionValue(progressBar, "progressBar");
        ViewExtKt.gone$default(progressBar, false, 1, null);
    }
}
