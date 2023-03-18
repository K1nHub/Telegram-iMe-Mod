package com.smedialink.p031ui.base.mvp;

import android.content.Context;
import com.smedialink.p031ui.base.mvp.base.MvpBaseDelegate;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import moxy.MvpDelegate;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MvpFragment.kt */
/* renamed from: com.smedialink.ui.base.mvp.MvpFragment$mvpBaseDelegate$2 */
/* loaded from: classes3.dex */
public final class MvpFragment$mvpBaseDelegate$2 extends Lambda implements Function0<C18611> {
    final /* synthetic */ MvpFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpFragment$mvpBaseDelegate$2(MvpFragment mvpFragment) {
        super(0);
        this.this$0 = mvpFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.smedialink.ui.base.mvp.MvpFragment$mvpBaseDelegate$2$1] */
    @Override // kotlin.jvm.functions.Function0
    public final C18611 invoke() {
        return new MvpBaseDelegate<MvpFragment>() { // from class: com.smedialink.ui.base.mvp.MvpFragment$mvpBaseDelegate$2.1
            private final Lazy context$delegate;

            {
                Lazy lazy;
                lazy = LazyKt__LazyJVMKt.lazy(new MvpFragment$mvpBaseDelegate$2$1$context$2(MvpFragment.this));
                this.context$delegate = lazy;
            }

            @Override // com.smedialink.p031ui.base.mvp.base.BaseDelegate
            public Context getContext() {
                Object value = this.context$delegate.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-context>(...)");
                return (Context) value;
            }

            @Override // com.smedialink.p031ui.base.mvp.base.BaseDelegate
            public MvpDelegate<MvpFragment> createDelegate() {
                return new MvpDelegate<>(MvpFragment.this);
            }
        };
    }
}
