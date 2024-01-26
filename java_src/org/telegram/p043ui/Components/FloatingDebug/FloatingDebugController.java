package org.telegram.p043ui.Components.FloatingDebug;

import android.widget.FrameLayout;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.Components.AnimationProperties;
import org.telegram.p043ui.LaunchActivity;
/* renamed from: org.telegram.ui.Components.FloatingDebug.FloatingDebugController */
/* loaded from: classes6.dex */
public class FloatingDebugController {
    private static FloatingDebugView debugView;

    /* renamed from: org.telegram.ui.Components.FloatingDebug.FloatingDebugController$DebugItemType */
    /* loaded from: classes6.dex */
    public enum DebugItemType {
        SIMPLE,
        HEADER,
        SEEKBAR
    }

    public static boolean isActive() {
        return SharedConfig.isFloatingDebugActive;
    }

    public static boolean onBackPressed() {
        FloatingDebugView floatingDebugView = debugView;
        return floatingDebugView != null && floatingDebugView.onBackPressed();
    }

    public static void onDestroy() {
        FloatingDebugView floatingDebugView = debugView;
        if (floatingDebugView != null) {
            floatingDebugView.saveConfig();
        }
        debugView = null;
    }

    public static void setActive(LaunchActivity launchActivity, boolean z) {
        setActive(launchActivity, z, true);
    }

    public static void setActive(final LaunchActivity launchActivity, boolean z, boolean z2) {
        FloatingDebugView floatingDebugView = debugView;
        if (z == (floatingDebugView != null)) {
            return;
        }
        if (z) {
            debugView = new FloatingDebugView(launchActivity);
            launchActivity.getMainContainerFrameLayout().addView(debugView, new FrameLayout.LayoutParams(-1, -1));
            debugView.showFab();
        } else {
            floatingDebugView.dismiss(new Runnable() { // from class: org.telegram.ui.Components.FloatingDebug.FloatingDebugController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FloatingDebugController.lambda$setActive$0(LaunchActivity.this);
                }
            });
        }
        if (z2) {
            SharedConfig.isFloatingDebugActive = z;
            SharedConfig.saveConfig();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setActive$0(LaunchActivity launchActivity) {
        launchActivity.getMainContainerFrameLayout().removeView(debugView);
        debugView = null;
    }

    /* renamed from: org.telegram.ui.Components.FloatingDebug.FloatingDebugController$DebugItem */
    /* loaded from: classes6.dex */
    public static class DebugItem {
        Runnable action;
        AnimationProperties.FloatProperty floatProperty;
        float from;
        final CharSequence title;

        /* renamed from: to */
        float f1859to;
        final DebugItemType type;

        public DebugItem(CharSequence charSequence, Runnable runnable) {
            this.type = DebugItemType.SIMPLE;
            this.title = charSequence;
            this.action = runnable;
        }

        public DebugItem(CharSequence charSequence) {
            this.type = DebugItemType.HEADER;
            this.title = charSequence;
        }

        public DebugItem(CharSequence charSequence, float f, float f2, AnimationProperties.FloatProperty floatProperty) {
            this.type = DebugItemType.SEEKBAR;
            this.title = charSequence;
            this.from = f;
            this.f1859to = f2;
            this.floatProperty = floatProperty;
        }
    }
}
