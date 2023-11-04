package Components;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.android.web.R;
import java.io.File;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadialProgress2;
import org.telegram.p043ui.IUpdateLayout;
import org.telegram.p043ui.LaunchActivity;
/* loaded from: classes.dex */
public class UpdateLayout extends IUpdateLayout {
    private Activity activity;
    private ViewGroup dialogContainerView;
    private boolean isDialogMode;
    private ViewGroup sideMenu;
    private ViewGroup sideMenuContainer;
    private FrameLayout updateLayout;
    private RadialProgress2 updateLayoutIcon;
    private TextView updateSizeTextView;
    private SimpleTextView updateTextView;

    @Override // org.telegram.p043ui.IUpdateLayout
    public void moveToDialog(int i, ViewGroup viewGroup) {
        this.dialogContainerView = viewGroup;
        AndroidUtilities.removeFromParent(this.updateLayout);
        createUpdateUI(i, true);
        updateAppUpdateViews(i, false);
    }

    @Override // org.telegram.p043ui.IUpdateLayout
    public void moveToSideMenu(int i) {
        this.dialogContainerView = null;
        AndroidUtilities.removeFromParent(this.updateLayout);
        createUpdateUI(i, false);
        updateAppUpdateViews(i, false);
    }

    public UpdateLayout(Activity activity, ViewGroup viewGroup, ViewGroup viewGroup2) {
        super(activity, viewGroup, viewGroup2);
        this.activity = activity;
        this.sideMenu = viewGroup;
        this.sideMenuContainer = viewGroup2;
    }

    @Override // org.telegram.p043ui.IUpdateLayout
    public void updateFileProgress(Object[] objArr) {
        if (this.updateTextView == null || !SharedConfig.isAppUpdateAvailable()) {
            return;
        }
        String str = (String) objArr[0];
        String str2 = SharedConfig.pendingAppUpdate.url;
        if (str2 == null || !str2.equals(str)) {
            return;
        }
        float longValue = ((float) ((Long) objArr[1]).longValue()) / ((float) ((Long) objArr[2]).longValue());
        this.updateLayoutIcon.setProgress(longValue, true);
        this.updateTextView.setText(LocaleController.formatString("AppUpdateDownloading", R.string.AppUpdateDownloading, Integer.valueOf((int) (longValue * 100.0f))));
    }

    public void createUpdateUI(int i, final boolean z) {
        if (this.sideMenuContainer == null) {
            return;
        }
        this.isDialogMode = z;
        FrameLayout frameLayout = new FrameLayout(this.activity) { // from class: Components.UpdateLayout.1
            private int lastGradientWidth;
            private LinearGradient updateGradient;
            private final Path path = new Path();
            private Paint paint = new Paint();
            private Matrix matrix = new Matrix();

            @Override // android.view.View
            public void draw(Canvas canvas) {
                if (this.updateGradient != null) {
                    this.paint.setColor(-1);
                    this.paint.setShader(this.updateGradient);
                    this.updateGradient.setLocalMatrix(this.matrix);
                    if (z) {
                        this.path.reset();
                        this.path.addRoundRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8), Path.Direction.CW);
                        canvas.clipPath(this.path);
                    }
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.paint);
                    UpdateLayout.this.updateLayoutIcon.setBackgroundGradientDrawable(this.updateGradient);
                    UpdateLayout.this.updateLayoutIcon.draw(canvas);
                }
                super.draw(canvas);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                int size = View.MeasureSpec.getSize(i2);
                if (this.lastGradientWidth != size) {
                    this.updateGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, size, (float) BitmapDescriptorFactory.HUE_RED, new int[]{-9846926, -11291731}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                    this.lastGradientWidth = size;
                }
            }
        };
        this.updateLayout = frameLayout;
        frameLayout.setWillNotDraw(false);
        this.updateLayout.setVisibility(4);
        if (!z) {
            this.updateLayout.setTranslationY(AndroidUtilities.m104dp(44));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.updateLayout.setBackground(Theme.getSelectorDrawable(1090519039, false));
        }
        if (z) {
            this.dialogContainerView.addView(this.updateLayout, LayoutHelper.createFrame(-1, 50, 83));
        } else {
            this.sideMenuContainer.addView(this.updateLayout, LayoutHelper.createFrame(-1, 44, 83));
        }
        if (z) {
            LayoutHelper.addFrameParams(this.updateLayout, 0, 0, 23.0f, BitmapDescriptorFactory.HUE_RED, 23.0f, 15.0f);
        } else {
            this.updateLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: Components.UpdateLayout$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean lambda$createUpdateUI$1;
                    lambda$createUpdateUI$1 = UpdateLayout.this.lambda$createUpdateUI$1(view);
                    return lambda$createUpdateUI$1;
                }
            });
        }
        this.updateLayout.setOnClickListener(new View.OnClickListener() { // from class: Components.UpdateLayout$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateLayout.this.lambda$createUpdateUI$2(view);
            }
        });
        RadialProgress2 radialProgress2 = new RadialProgress2(this.updateLayout);
        this.updateLayoutIcon = radialProgress2;
        radialProgress2.setColors(-1, -1, -1, -1);
        this.updateLayoutIcon.setProgressRect(AndroidUtilities.m104dp(22), AndroidUtilities.m104dp(11), AndroidUtilities.m104dp(44), AndroidUtilities.m104dp(33));
        if (z) {
            this.updateLayoutIcon.getProgressRect().offset(AndroidUtilities.m104dp(3), AndroidUtilities.m104dp(3));
        }
        this.updateLayoutIcon.setCircleRadius(AndroidUtilities.m104dp(11));
        this.updateLayoutIcon.setAsMini();
        SimpleTextView simpleTextView = new SimpleTextView(this.activity);
        this.updateTextView = simpleTextView;
        simpleTextView.setTextSize(15);
        this.updateTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.updateTextView.setText(LocaleController.getString("AppUpdate", R.string.AppUpdate));
        this.updateTextView.setTextColor(-1);
        this.updateTextView.setGravity(3);
        this.updateLayout.addView(this.updateTextView, LayoutHelper.createFrame(-2, -2, 16, 74, 0, 0, 0));
        TextView textView = new TextView(this.activity);
        this.updateSizeTextView = textView;
        textView.setTextSize(1, 15.0f);
        this.updateSizeTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.updateSizeTextView.setGravity(5);
        this.updateSizeTextView.setTextColor(-1);
        this.updateLayout.addView(this.updateSizeTextView, LayoutHelper.createFrame(-2, -2, 21, 0, 0, 17, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createUpdateUI$1(View view) {
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (launchActivity == null) {
            return false;
        }
        launchActivity.drawerLayoutContainer.closeDrawer(false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: Components.UpdateLayout$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                UpdateLayout.this.lambda$createUpdateUI$0();
            }
        }, 300L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createUpdateUI$0() {
        ApplicationLoader.applicationLoaderInstance.showUpdateAppPopup(this.activity, SharedConfig.pendingAppUpdate, 0, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createUpdateUI$2(View view) {
        if (SharedConfig.isAppUpdateAvailable()) {
            if (this.updateLayoutIcon.getIcon() == 2) {
                ApplicationLoader.isCheckForUpdateInProgress = true;
                ApplicationLoader.isCheckForUpdateCanceled = false;
                ApplicationLoader.checkForUpdates(false);
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
            } else if (this.updateLayoutIcon.getIcon() == 3) {
                ApplicationLoader.isCheckForUpdateCanceled = true;
                ApplicationLoader.isCheckForUpdateInProgress = false;
                ImageLoader.getInstance().cancelLoadHttpFile(SharedConfig.pendingAppUpdate.url);
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
            } else {
                File httpFilePath = ImageLoader.getHttpFilePath(SharedConfig.pendingAppUpdate.url, "apk");
                AndroidUtilities.openForView(httpFilePath, httpFilePath.getName(), "apk", this.activity, null);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0152 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0153  */
    @Override // org.telegram.p043ui.IUpdateLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateAppUpdateViews(int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Components.UpdateLayout.updateAppUpdateViews(int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateAppUpdateViews$3(View view) {
        if (view != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }
}
