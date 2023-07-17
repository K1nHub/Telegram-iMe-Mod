package com.iMe.utils.extentions.common;

import android.view.LayoutInflater;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import timber.log.Timber;
/* compiled from: BaseFragmentExt.kt */
/* loaded from: classes4.dex */
public final class BaseFragmentExtKt {
    public static final LayoutInflater getLayoutInflater(BaseFragment baseFragment) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        LayoutInflater from = LayoutInflater.from(baseFragment.getParentActivity());
        Intrinsics.checkNotNullExpressionValue(from, "from(parentActivity)");
        return from;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004c A[EDGE_INSN: B:23:0x004c->B:18:0x004c ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> void removeFragmentFromStack(org.telegram.p043ui.ActionBar.BaseFragment r3, java.lang.Class<T> r4, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r5) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "clazz"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "condition"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            org.telegram.ui.ActionBar.INavigationLayout r3 = r3.getParentLayout()
            if (r3 == 0) goto L53
            java.util.List r3 = r3.getFragmentStack()
            if (r3 == 0) goto L53
            java.util.Iterator r3 = r3.iterator()
        L1f:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L4b
            java.lang.Object r0 = r3.next()
            r1 = r0
            org.telegram.ui.ActionBar.BaseFragment r1 = (org.telegram.p043ui.ActionBar.BaseFragment) r1
            boolean r2 = r4.isInstance(r1)
            if (r2 == 0) goto L47
            java.lang.Object r1 = r4.cast(r1)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            java.lang.Object r1 = r5.invoke(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L47
            r1 = 1
            goto L48
        L47:
            r1 = 0
        L48:
            if (r1 == 0) goto L1f
            goto L4c
        L4b:
            r0 = 0
        L4c:
            org.telegram.ui.ActionBar.BaseFragment r0 = (org.telegram.p043ui.ActionBar.BaseFragment) r0
            if (r0 == 0) goto L53
            r0.removeSelfFromStack()
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.utils.extentions.common.BaseFragmentExtKt.removeFragmentFromStack(org.telegram.ui.ActionBar.BaseFragment, java.lang.Class, kotlin.jvm.functions.Function1):void");
    }

    public static final <T> boolean containsFragmentInStack(BaseFragment baseFragment, Class<T> clazz) {
        List<BaseFragment> fragmentStack;
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        INavigationLayout parentLayout = baseFragment.getParentLayout();
        Object obj = null;
        if (parentLayout != null && (fragmentStack = parentLayout.getFragmentStack()) != null) {
            Iterator<T> it = fragmentStack.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (clazz.isInstance((BaseFragment) next)) {
                    obj = next;
                    break;
                }
            }
            obj = (BaseFragment) obj;
        }
        return obj != null;
    }

    public static final void setEnableSecureWindow(BaseFragment baseFragment, boolean z) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        try {
            if (z) {
                baseFragment.getParentActivity().getWindow().setFlags(8192, 8192);
            } else {
                baseFragment.getParentActivity().getWindow().clearFlags(8192);
            }
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }
}
