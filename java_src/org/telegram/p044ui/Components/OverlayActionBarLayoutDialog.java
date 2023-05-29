package org.telegram.p044ui.Components;

import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.INavigationLayout;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.LaunchActivity;
/* renamed from: org.telegram.ui.Components.OverlayActionBarLayoutDialog */
/* loaded from: classes6.dex */
public class OverlayActionBarLayoutDialog extends Dialog implements INavigationLayout.INavigationLayoutDelegate {
    private INavigationLayout actionBarLayout;
    private FrameLayout frameLayout;
    private PasscodeView passcodeView;
    private Theme.ResourcesProvider resourcesProvider;

    @Override // org.telegram.p044ui.ActionBar.INavigationLayout.INavigationLayoutDelegate
    public boolean needAddFragmentToStack(BaseFragment baseFragment, INavigationLayout iNavigationLayout) {
        return true;
    }

    @Override // org.telegram.p044ui.ActionBar.INavigationLayout.INavigationLayoutDelegate
    public boolean needPresentFragment(BaseFragment baseFragment, boolean z, boolean z2, INavigationLayout iNavigationLayout) {
        return true;
    }

    @Override // org.telegram.p044ui.ActionBar.INavigationLayout.INavigationLayoutDelegate
    public /* synthetic */ boolean needPresentFragment(INavigationLayout iNavigationLayout, INavigationLayout.NavigationParams navigationParams) {
        boolean needPresentFragment;
        needPresentFragment = needPresentFragment(navigationParams.fragment, navigationParams.removeLast, navigationParams.noAnimation, iNavigationLayout);
        return needPresentFragment;
    }

    @Override // org.telegram.p044ui.ActionBar.INavigationLayout.INavigationLayoutDelegate
    public boolean onPreIme() {
        return false;
    }

    @Override // org.telegram.p044ui.ActionBar.INavigationLayout.INavigationLayoutDelegate
    public void onRebuildAllFragments(INavigationLayout iNavigationLayout, boolean z) {
    }

    @Override // org.telegram.p044ui.ActionBar.INavigationLayout.INavigationLayoutDelegate
    public /* synthetic */ void onThemeProgress(float f) {
        INavigationLayout.INavigationLayoutDelegate.CC.$default$onThemeProgress(this, f);
    }

    public OverlayActionBarLayoutDialog(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, C3290R.style.TransparentDialog);
        this.resourcesProvider = resourcesProvider;
        INavigationLayout newLayout = INavigationLayout.CC.newLayout(context);
        this.actionBarLayout = newLayout;
        newLayout.setFragmentStack(new ArrayList());
        this.actionBarLayout.presentFragment(new INavigationLayout.NavigationParams(new EmptyFragment()).setNoAnimation(true));
        this.actionBarLayout.setDelegate(this);
        FrameLayout frameLayout = new FrameLayout(context);
        this.frameLayout = frameLayout;
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.frameLayout.addView(this.actionBarLayout.getView(), new FrameLayout.LayoutParams(-1, -1, 17));
        if (AndroidUtilities.isTablet() && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isSmallTablet()) {
            this.frameLayout.setBackgroundColor(-1728053248);
            this.frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.OverlayActionBarLayoutDialog$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OverlayActionBarLayoutDialog.this.lambda$new$0(view);
                }
            });
            this.actionBarLayout.setRemoveActionBarExtraHeight(true);
            VerticalPositionAutoAnimator.attach(this.actionBarLayout.getView());
        }
        PasscodeView passcodeView = new PasscodeView(context);
        this.passcodeView = passcodeView;
        this.frameLayout.addView(passcodeView, LayoutHelper.createFrame(-1, -1));
        setContentView(this.frameLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        onBackPressed();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        Context context = getContext();
        if ((context instanceof ContextWrapper) && !(context instanceof LaunchActivity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof LaunchActivity) {
            ((LaunchActivity) context).addOverlayPasscodeView(this.passcodeView);
        }
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        Context context = getContext();
        if ((context instanceof ContextWrapper) && !(context instanceof LaunchActivity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof LaunchActivity) {
            ((LaunchActivity) context).removeOverlayPasscodeView(this.passcodeView);
        }
    }

    @Override // org.telegram.p044ui.ActionBar.INavigationLayout.INavigationLayoutDelegate
    public void onMeasureOverride(int[] iArr) {
        if (!AndroidUtilities.isTablet() || AndroidUtilities.isInMultiwindow || AndroidUtilities.isSmallTablet()) {
            return;
        }
        iArr[0] = View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m54dp(530), View.MeasureSpec.getSize(iArr[0])), 1073741824);
        iArr[1] = View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m54dp(528), View.MeasureSpec.getSize(iArr[1])), 1073741824);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            window.addFlags(-2147483392);
        } else if (i >= 21) {
            window.addFlags(-2147417856);
        }
        window.setWindowAnimations(C3290R.style.DialogNoAnimation);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.gravity = 51;
        attributes.dimAmount = BitmapDescriptorFactory.HUE_RED;
        attributes.flags &= -3;
        attributes.softInputMode = 16;
        attributes.height = -1;
        if (i >= 28) {
            attributes.layoutInDisplayCutoutMode = 1;
        }
        window.setAttributes(attributes);
        if (i >= 23) {
            window.setStatusBarColor(0);
        }
        this.frameLayout.setSystemUiVisibility(1280);
        if (i >= 21) {
            this.frameLayout.setOnApplyWindowInsetsListener(OverlayActionBarLayoutDialog$$ExternalSyntheticLambda0.INSTANCE);
        }
        if (i >= 26) {
            AndroidUtilities.setLightNavigationBar(window, ColorUtils.calculateLuminance(Theme.getColor(Theme.key_windowBackgroundWhite, null, true)) >= 0.9d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ WindowInsets lambda$onCreate$1(View view, WindowInsets windowInsets) {
        view.setPadding(0, 0, 0, windowInsets.getSystemWindowInsetBottom());
        return windowInsets;
    }

    public void addFragment(BaseFragment baseFragment) {
        this.actionBarLayout.presentFragment(baseFragment, (!AndroidUtilities.isTablet() || AndroidUtilities.isInMultiwindow || AndroidUtilities.isSmallTablet()) ? false : true);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.passcodeView.getVisibility() == 0) {
            if (getOwnerActivity() != null) {
                getOwnerActivity().finish();
                return;
            }
            return;
        }
        this.actionBarLayout.onBackPressed();
        if (this.actionBarLayout.getFragmentStack().size() <= 1) {
            dismiss();
        }
    }

    @Override // org.telegram.p044ui.ActionBar.INavigationLayout.INavigationLayoutDelegate
    public boolean needCloseLastFragment(INavigationLayout iNavigationLayout) {
        if (iNavigationLayout.getFragmentStack().size() <= 1) {
            dismiss();
        }
        return true;
    }

    /* renamed from: org.telegram.ui.Components.OverlayActionBarLayoutDialog$EmptyFragment */
    /* loaded from: classes6.dex */
    private final class EmptyFragment extends BaseFragment {
        private EmptyFragment() {
        }

        @Override // org.telegram.p044ui.ActionBar.BaseFragment
        public View createView(Context context) {
            this.hasOwnBackground = true;
            this.actionBar.setAddToContainer(false);
            View view = new View(context);
            view.setBackgroundColor(0);
            return view;
        }

        @Override // org.telegram.p044ui.ActionBar.BaseFragment
        public void onTransitionAnimationEnd(boolean z, boolean z2) {
            if (z && z2) {
                OverlayActionBarLayoutDialog.this.dismiss();
            }
        }
    }
}
