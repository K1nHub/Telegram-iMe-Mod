package com.iMe.fork.utils;

import android.view.View;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.BaseFragment;
/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T extends org.telegram.ui.ActionBar.BaseFragment
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: TabbedFragmentPage.kt */
/* loaded from: classes3.dex */
public final class TabbedFragmentPage<T extends BaseFragment> extends AbstractTabbedViewPage {
    private final T fragment;
    private final int icon;
    private final Function0<View> provideViewAction;
    private final String title;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TabbedFragmentPage) {
            TabbedFragmentPage tabbedFragmentPage = (TabbedFragmentPage) obj;
            return Intrinsics.areEqual(getTitle(), tabbedFragmentPage.getTitle()) && getIcon() == tabbedFragmentPage.getIcon() && Intrinsics.areEqual(this.fragment, tabbedFragmentPage.fragment) && Intrinsics.areEqual(this.provideViewAction, tabbedFragmentPage.provideViewAction);
        }
        return false;
    }

    public int hashCode() {
        return (((((getTitle().hashCode() * 31) + getIcon()) * 31) + this.fragment.hashCode()) * 31) + this.provideViewAction.hashCode();
    }

    public String toString() {
        return "TabbedFragmentPage(title=" + getTitle() + ", icon=" + getIcon() + ", fragment=" + this.fragment + ", provideViewAction=" + this.provideViewAction + ')';
    }

    @Override // com.iMe.fork.utils.AbstractTabbedViewPage
    public String getTitle() {
        return this.title;
    }

    @Override // com.iMe.fork.utils.AbstractTabbedViewPage
    public int getIcon() {
        return this.icon;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TabbedFragmentPage.kt */
    /* renamed from: com.iMe.fork.utils.TabbedFragmentPage$1 */
    /* loaded from: classes3.dex */
    public static final class C15571 extends Lambda implements Function0<View> {
        final /* synthetic */ T $fragment;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15571(T t) {
            super(0);
            this.$fragment = t;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final View invoke() {
            View fragmentView = this.$fragment.getFragmentView();
            Intrinsics.checkNotNullExpressionValue(fragmentView, "fragment.fragmentView");
            return fragmentView;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ View invoke() {
            return invoke();
        }
    }

    public final T getFragment() {
        return this.fragment;
    }

    public /* synthetic */ TabbedFragmentPage(String str, int i, BaseFragment baseFragment, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? -1 : i, baseFragment, (i2 & 8) != 0 ? new C15571(baseFragment) : function0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TabbedFragmentPage(String title, int i, T fragment, Function0<? extends View> provideViewAction) {
        super(title, i);
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(provideViewAction, "provideViewAction");
        this.title = title;
        this.icon = i;
        this.fragment = fragment;
        this.provideViewAction = provideViewAction;
    }

    @Override // com.iMe.fork.utils.AbstractTabbedViewPage
    public View getView() {
        return this.provideViewAction.invoke();
    }
}
