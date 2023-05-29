package com.iMe.p031ui.adapter.provider;

import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkRecylcerImageItemBinding;
/* compiled from: TweetProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TweetProvider$onBindImage$1$1 */
/* loaded from: classes.dex */
final class TweetProvider$onBindImage$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ ForkRecylcerImageItemBinding $this_apply;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TweetProvider$onBindImage$1$1(ForkRecylcerImageItemBinding forkRecylcerImageItemBinding) {
        super(0);
        this.$this_apply = forkRecylcerImageItemBinding;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ConstraintLayout root = this.$this_apply.errorBlock.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "errorBlock.root");
        ViewExtKt.visible$default(root, false, 1, null);
        Unit unit = Unit.INSTANCE;
        ProgressBar progressBar = this.$this_apply.progressBar;
        Intrinsics.checkNotNullExpressionValue(progressBar, "progressBar");
        ViewExtKt.gone$default(progressBar, false, 1, null);
    }
}
