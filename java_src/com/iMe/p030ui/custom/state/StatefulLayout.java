package com.iMe.p030ui.custom.state;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.iMe.model.state.GlobalState;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
/* compiled from: StatefulLayout.kt */
/* renamed from: com.iMe.ui.custom.state.StatefulLayout */
/* loaded from: classes3.dex */
public class StatefulLayout extends FrameLayout {
    private boolean mDirtyFlag;
    private boolean mInitialized;
    private OnStateChangeListener mOnStateChangeListener;
    private String mState;
    private final Map<String, View> mStateViews;

    /* compiled from: StatefulLayout.kt */
    /* renamed from: com.iMe.ui.custom.state.StatefulLayout$OnStateChangeListener */
    /* loaded from: classes3.dex */
    public interface OnStateChangeListener {
        void onStateChange(String str);
    }

    /* compiled from: StatefulLayout.kt */
    /* renamed from: com.iMe.ui.custom.state.StatefulLayout$StateController */
    /* loaded from: classes3.dex */
    public static final class StateController {
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StatefulLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ StatefulLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StatefulLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mStateViews = new HashMap();
        this.mState = GlobalState.Content.INSTANCE.getState();
    }

    public final String getState() {
        return this.mState;
    }

    public final void setState(String state) {
        Intrinsics.checkNotNullParameter(state, "state");
        internalSetState(state);
    }

    public final void setStateView(String state, View view) {
        Intrinsics.checkNotNullParameter(state, "state");
        if (this.mStateViews.containsKey(state)) {
            removeView(this.mStateViews.get(state));
        }
        this.mStateViews.put(state, view);
        if ((view != null ? view.getParent() : null) == null) {
            addView(view);
        }
        if (view != null) {
            ViewExtKt.gone$default(view, false, 1, null);
        }
        this.mDirtyFlag = true;
    }

    public final void setOnStateChangeListener(OnStateChangeListener onStateChangeListener) {
        this.mOnStateChangeListener = onStateChangeListener;
    }

    public final void saveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        outState.putString("stateful_layout_state", this.mState);
    }

    public final String restoreInstanceState(Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(savedInstanceState, "savedInstanceState");
        String string = savedInstanceState.getString("stateful_layout_state");
        if (string == null) {
            string = GlobalState.Content.INSTANCE.getState();
        }
        setState(string);
        return getState();
    }

    public final View getStateView(String state) {
        Intrinsics.checkNotNullParameter(state, "state");
        return this.mStateViews.get(state);
    }

    public final void clearStates() {
        Iterator it = new HashSet(this.mStateViews.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            View view = this.mStateViews.get(str);
            if (!Intrinsics.areEqual(str, GlobalState.Content.INSTANCE.getState())) {
                removeView(view);
                this.mStateViews.remove(str);
            }
        }
    }

    public final void setStateController(StateController stateController) {
        Intrinsics.checkNotNullParameter(stateController, "stateController");
        clearStates();
        throw null;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.mInitialized) {
            return;
        }
        onSetupContentState();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        saveInstanceState(bundle);
        return bundle;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        Intrinsics.checkNotNullParameter(state, "state");
        if (state instanceof Bundle) {
            Bundle bundle = (Bundle) state;
            restoreInstanceState(bundle);
            state = bundle.getParcelable("instanceState");
        }
        super.onRestoreInstanceState(state);
    }

    private final void internalSetState(String str) {
        if (getStateView(str) == null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("Cannot switch to state \"%s\". This state was not defined or the view for this state is null.", Arrays.copyOf(new Object[]{str}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            throw new IllegalStateException(format.toString());
        } else if (!Intrinsics.areEqual(this.mState, str) || this.mDirtyFlag) {
            this.mState = str;
            for (Map.Entry<String, View> entry : this.mStateViews.entrySet()) {
                String key = entry.getKey();
                View value = entry.getValue();
                if (value != null) {
                    value.setVisibility(Intrinsics.areEqual(key, str) ? 0 : 8);
                }
            }
            OnStateChangeListener onStateChangeListener = this.mOnStateChangeListener;
            if (onStateChangeListener != null) {
                onStateChangeListener.onStateChange(str);
            }
            this.mDirtyFlag = false;
        }
    }

    private final void onSetupContentState() {
        if (!(getChildCount() == this.mStateViews.size() + 1)) {
            throw new IllegalStateException("Invalid child count. StatefulLayout must have exactly one child.".toString());
        }
        View childAt = getChildAt(this.mStateViews.size());
        removeView(childAt);
        GlobalState.Content content = GlobalState.Content.INSTANCE;
        setStateView(content.getState(), childAt);
        setState(content.getState());
        this.mInitialized = true;
    }

    /* compiled from: StatefulLayout.kt */
    /* renamed from: com.iMe.ui.custom.state.StatefulLayout$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
