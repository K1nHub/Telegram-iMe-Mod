package org.telegram.p043ui.Components;

import android.animation.TimeInterpolator;
import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionSet;
/* renamed from: org.telegram.ui.Components.TransitionExt */
/* loaded from: classes6.dex */
public class TransitionExt {
    public static Transition createSimpleTransition() {
        TransitionSet transitionSet = new TransitionSet();
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setDuration(150L);
        transitionSet.addTransition(new Fade().setDuration(150L)).addTransition(changeBounds);
        transitionSet.setOrdering(0);
        transitionSet.setInterpolator((TimeInterpolator) CubicBezierInterpolator.DEFAULT);
        return transitionSet;
    }
}
