package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.ActionMode;
/* renamed from: androidx.appcompat.app.ActionBar */
/* loaded from: classes.dex */
public abstract class AbstractC0025ActionBar {

    /* renamed from: androidx.appcompat.app.ActionBar$OnMenuVisibilityListener */
    /* loaded from: classes.dex */
    public interface OnMenuVisibilityListener {
        void onMenuVisibilityChanged(boolean z);
    }

    @Deprecated
    /* renamed from: androidx.appcompat.app.ActionBar$Tab */
    /* loaded from: classes.dex */
    public static abstract class Tab {
        public abstract CharSequence getContentDescription();

        public abstract View getCustomView();

        public abstract Drawable getIcon();

        public abstract CharSequence getText();

        public abstract void select();
    }

    public boolean closeOptionsMenu() {
        return false;
    }

    public abstract boolean collapseActionView();

    public abstract void dispatchMenuVisibilityChanged(boolean z);

    public abstract int getDisplayOptions();

    public abstract Context getThemedContext();

    public boolean invalidateOptionsMenu() {
        return false;
    }

    public abstract void onConfigurationChanged(Configuration configuration);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDestroy() {
    }

    public abstract boolean onKeyShortcut(int i, KeyEvent keyEvent);

    public boolean onMenuKeyEvent(KeyEvent keyEvent) {
        return false;
    }

    public boolean openOptionsMenu() {
        return false;
    }

    public abstract void setDefaultDisplayHomeAsUpEnabled(boolean z);

    public abstract void setShowHideAnimationEnabled(boolean z);

    public abstract void setWindowTitle(CharSequence charSequence);

    public abstract ActionMode startActionMode(ActionMode.Callback callback);

    /* renamed from: androidx.appcompat.app.ActionBar$LayoutParams */
    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionBarLayout);
            this.gravity = obtainStyledAttributes.getInt(R$styleable.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = 0;
            this.gravity = 8388627;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }
    }
}
