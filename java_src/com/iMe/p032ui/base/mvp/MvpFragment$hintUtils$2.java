package com.iMe.p032ui.base.mvp;

import com.iMe.utils.hints.HintUtils;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MvpFragment.kt */
/* renamed from: com.iMe.ui.base.mvp.MvpFragment$hintUtils$2 */
/* loaded from: classes3.dex */
public final class MvpFragment$hintUtils$2 extends Lambda implements Function0<HintUtils> {
    public static final MvpFragment$hintUtils$2 INSTANCE = new MvpFragment$hintUtils$2();

    MvpFragment$hintUtils$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final HintUtils invoke() {
        return new HintUtils();
    }
}
