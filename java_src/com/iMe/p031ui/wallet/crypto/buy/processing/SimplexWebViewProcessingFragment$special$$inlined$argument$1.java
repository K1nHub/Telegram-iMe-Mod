package com.iMe.p031ui.wallet.crypto.buy.processing;

import android.os.Bundle;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.ActionBar.BaseFragment;
/* compiled from: BundleExtractorDelegate.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment$special$$inlined$argument$1 */
/* loaded from: classes3.dex */
public final class SimplexWebViewProcessingFragment$special$$inlined$argument$1 extends Lambda implements Function1<BaseFragment, String> {
    final /* synthetic */ Object $defaultValue;
    final /* synthetic */ String $key;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimplexWebViewProcessingFragment$special$$inlined$argument$1(String str, Object obj) {
        super(1);
        this.$key = str;
        this.$defaultValue = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final String invoke(BaseFragment thisRef) {
        Object obj;
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Bundle arguments = thisRef.getArguments();
        String str = this.$key;
        Object obj2 = this.$defaultValue;
        if (arguments != null && (obj = arguments.get(str)) != null) {
            obj2 = obj;
        }
        if (obj2 != null && !(obj2 instanceof String)) {
            throw new ClassCastException("Property " + str + " has different class type");
        }
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.String");
        return (String) obj2;
    }
}
