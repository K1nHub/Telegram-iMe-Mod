package com.iMe.utils.extentions.delegate;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: ResettableLazyDelegate.kt */
/* loaded from: classes4.dex */
final class ResettableLazy$makeInitBlock$1 extends Lambda implements Function0<PROPTYPE> {
    final /* synthetic */ ResettableLazy<PROPTYPE> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResettableLazy$makeInitBlock$1(ResettableLazy<PROPTYPE> resettableLazy) {
        super(0);
        this.this$0 = resettableLazy;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [PROPTYPE, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    public final PROPTYPE invoke() {
        this.this$0.getManager().register(this.this$0);
        return this.this$0.getInit().invoke();
    }
}
