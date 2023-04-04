package org.telegram.p048ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.ProxyRotationController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p048ui.ActionBar.ActionBarMenu;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BackDrawable;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3381ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.ShadowSectionCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Cells.TextSettingsCell;
import org.telegram.p048ui.Components.CheckBox2;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.NumberTextView;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.SlideChooseView;
import org.telegram.p048ui.ProxyListActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestTimeDelegate;
/* renamed from: org.telegram.ui.ProxyListActivity */
/* loaded from: classes5.dex */
public class ProxyListActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private int callsDetailRow;
    private int callsRow;
    private int connectionsHeaderRow;
    private int currentConnectionState;
    private int deleteAllRow;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private int proxyAddRow;
    private int proxyButtonForceVisibleRow;
    private int proxyEndRow;
    private int proxyShadowRow;
    private int proxyStartRow;
    private int rotationRow;
    private int rotationTimeoutInfoRow;
    private int rotationTimeoutRow;
    private int rowCount;
    private NumberTextView selectedCountTextView;
    private boolean useProxyForCalls;
    private int useProxyRow;
    private boolean useProxySettings;
    private int useProxyShadowRow;
    private boolean wasCheckedAllList;
    private List<SharedConfig.ProxyInfo> selectedItems = new ArrayList();
    private List<SharedConfig.ProxyInfo> proxyList = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createView$3(View view, MotionEvent motionEvent) {
        return true;
    }

    /* renamed from: org.telegram.ui.ProxyListActivity$TextDetailProxyCell */
    /* loaded from: classes5.dex */
    public class TextDetailProxyCell extends FrameLayout {
        private CheckBox2 checkBox;
        private Drawable checkDrawable;
        private ImageView checkImageView;
        private int color;
        private SharedConfig.ProxyInfo currentInfo;
        private boolean isSelected;
        private boolean isSelectionEnabled;
        private TextView textView;
        private TextView valueTextView;

        public TextDetailProxyCell(Context context) {
            super(context);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.textView.setTextSize(1, 16.0f);
            this.textView.setLines(1);
            this.textView.setMaxLines(1);
            this.textView.setSingleLine(true);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            TextView textView2 = this.textView;
            boolean z = LocaleController.isRTL;
            addView(textView2, LayoutHelper.createFrame(-2, -2, (z ? 5 : 3) | 48, z ? 56 : 21, 10, z ? 21 : 56, 0));
            TextView textView3 = new TextView(context);
            this.valueTextView = textView3;
            textView3.setTextSize(1, 13.0f);
            this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.valueTextView.setLines(1);
            this.valueTextView.setMaxLines(1);
            this.valueTextView.setSingleLine(true);
            this.valueTextView.setCompoundDrawablePadding(AndroidUtilities.m50dp(6));
            this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
            this.valueTextView.setPadding(0, 0, 0, 0);
            TextView textView4 = this.valueTextView;
            boolean z2 = LocaleController.isRTL;
            addView(textView4, LayoutHelper.createFrame(-2, -2, (z2 ? 5 : 3) | 48, z2 ? 56 : 21, 35, z2 ? 21 : 56, 0));
            ImageView imageView = new ImageView(context);
            this.checkImageView = imageView;
            imageView.setImageResource(C3316R.C3318drawable.msg_info);
            this.checkImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayText3"), PorterDuff.Mode.MULTIPLY));
            this.checkImageView.setScaleType(ImageView.ScaleType.CENTER);
            this.checkImageView.setContentDescription(LocaleController.getString("Edit", C3316R.string.Edit));
            addView(this.checkImageView, LayoutHelper.createFrame(48, 48, (LocaleController.isRTL ? 3 : 5) | 48, 8, 8, 8, 0));
            this.checkImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ProxyListActivity.TextDetailProxyCell.this.lambda$new$0(view);
                }
            });
            CheckBox2 checkBox2 = new CheckBox2(context, 21);
            this.checkBox = checkBox2;
            checkBox2.setColor("checkbox", "radioBackground", "checkboxCheck");
            this.checkBox.setDrawBackgroundAsArc(14);
            this.checkBox.setVisibility(8);
            addView(this.checkBox, LayoutHelper.createFrame(24, 24, (LocaleController.isRTL ? 5 : 3) | 16, 16, 0, 8, 0));
            setWillNotDraw(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            ProxyListActivity.this.presentFragment(new ProxySettingsActivity(this.currentInfo));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(64) + 1, 1073741824));
        }

        public void setProxy(SharedConfig.ProxyInfo proxyInfo) {
            TextView textView = this.textView;
            textView.setText(proxyInfo.address + ":" + proxyInfo.port);
            this.currentInfo = proxyInfo;
        }

        public void updateStatus() {
            String str = "windowBackgroundWhiteGrayText2";
            if (SharedConfig.currentProxy == this.currentInfo && ProxyListActivity.this.useProxySettings) {
                if (ProxyListActivity.this.currentConnectionState == 3 || ProxyListActivity.this.currentConnectionState == 5) {
                    if (this.currentInfo.ping != 0) {
                        TextView textView = this.valueTextView;
                        textView.setText(LocaleController.getString("Connected", C3316R.string.Connected) + ", " + LocaleController.formatString("Ping", C3316R.string.Ping, Long.valueOf(this.currentInfo.ping)));
                    } else {
                        this.valueTextView.setText(LocaleController.getString("Connected", C3316R.string.Connected));
                    }
                    SharedConfig.ProxyInfo proxyInfo = this.currentInfo;
                    if (!proxyInfo.checking && !proxyInfo.available) {
                        proxyInfo.availableCheckTime = 0L;
                    }
                    str = "windowBackgroundWhiteBlueText6";
                } else {
                    this.valueTextView.setText(LocaleController.getString("Connecting", C3316R.string.Connecting));
                }
            } else {
                SharedConfig.ProxyInfo proxyInfo2 = this.currentInfo;
                if (proxyInfo2.checking) {
                    this.valueTextView.setText(LocaleController.getString("Checking", C3316R.string.Checking));
                } else if (proxyInfo2.available) {
                    if (proxyInfo2.ping != 0) {
                        TextView textView2 = this.valueTextView;
                        textView2.setText(LocaleController.getString("Available", C3316R.string.Available) + ", " + LocaleController.formatString("Ping", C3316R.string.Ping, Long.valueOf(this.currentInfo.ping)));
                    } else {
                        this.valueTextView.setText(LocaleController.getString("Available", C3316R.string.Available));
                    }
                    str = "windowBackgroundWhiteGreenText";
                } else {
                    this.valueTextView.setText(LocaleController.getString("Unavailable", C3316R.string.Unavailable));
                    str = "windowBackgroundWhiteRedText4";
                }
            }
            this.color = Theme.getColor(str);
            this.valueTextView.setTag(str);
            this.valueTextView.setTextColor(this.color);
            Drawable drawable = this.checkDrawable;
            if (drawable != null) {
                drawable.setColorFilter(new PorterDuffColorFilter(this.color, PorterDuff.Mode.MULTIPLY));
            }
        }

        public void setSelectionEnabled(final boolean z, boolean z2) {
            if (this.isSelectionEnabled == z && z2) {
                return;
            }
            this.isSelectionEnabled = z;
            final float m50dp = LocaleController.isRTL ? -AndroidUtilities.m50dp(32) : AndroidUtilities.m50dp(32);
            if (!z2) {
                if (!z) {
                    m50dp = 0.0f;
                }
                this.textView.setTranslationX(m50dp);
                this.valueTextView.setTranslationX(m50dp);
                this.checkImageView.setTranslationX(m50dp);
                CheckBox2 checkBox2 = this.checkBox;
                boolean z3 = LocaleController.isRTL;
                int m50dp2 = AndroidUtilities.m50dp(32);
                if (!z3) {
                    m50dp2 = -m50dp2;
                }
                checkBox2.setTranslationX(m50dp2 + m50dp);
                this.checkImageView.setVisibility(z ? 8 : 0);
                this.checkImageView.setAlpha(1.0f);
                this.checkImageView.setScaleX(1.0f);
                this.checkImageView.setScaleY(1.0f);
                this.checkBox.setVisibility(z ? 0 : 8);
                this.checkBox.setAlpha(1.0f);
                this.checkBox.setScaleX(1.0f);
                this.checkBox.setScaleY(1.0f);
                return;
            }
            float[] fArr = new float[2];
            fArr[0] = z ? 0.0f : 1.0f;
            fArr[1] = z ? 1.0f : 0.0f;
            ValueAnimator duration = ValueAnimator.ofFloat(fArr).setDuration(200L);
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ProxyListActivity.TextDetailProxyCell.this.lambda$setSelectionEnabled$1(r2, m50dp, valueAnimator);
                }
            });
            duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProxyListActivity.TextDetailProxyCell.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    if (z) {
                        TextDetailProxyCell.this.checkBox.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        TextDetailProxyCell.this.checkBox.setVisibility(0);
                        return;
                    }
                    TextDetailProxyCell.this.checkImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    TextDetailProxyCell.this.checkImageView.setVisibility(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (z) {
                        TextDetailProxyCell.this.checkImageView.setVisibility(8);
                    } else {
                        TextDetailProxyCell.this.checkBox.setVisibility(8);
                    }
                }
            });
            duration.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setSelectionEnabled$1(float f, float f2, ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float lerp = AndroidUtilities.lerp(f, f2, floatValue);
            this.textView.setTranslationX(lerp);
            this.valueTextView.setTranslationX(lerp);
            this.checkImageView.setTranslationX(lerp);
            this.checkBox.setTranslationX((LocaleController.isRTL ? AndroidUtilities.m50dp(32) : -AndroidUtilities.m50dp(32)) + lerp);
            float f3 = (floatValue * 0.5f) + 0.5f;
            this.checkBox.setScaleX(f3);
            this.checkBox.setScaleY(f3);
            this.checkBox.setAlpha(floatValue);
            float f4 = 1.0f - floatValue;
            float f5 = (f4 * 0.5f) + 0.5f;
            this.checkImageView.setScaleX(f5);
            this.checkImageView.setScaleY(f5);
            this.checkImageView.setAlpha(f4);
        }

        public void setItemSelected(boolean z, boolean z2) {
            if (z == this.isSelected && z2) {
                return;
            }
            this.isSelected = z;
            this.checkBox.setChecked(z, z2);
        }

        public void setChecked(boolean z) {
            if (z) {
                if (this.checkDrawable == null) {
                    this.checkDrawable = getResources().getDrawable(C3316R.C3318drawable.proxy_check).mutate();
                }
                Drawable drawable = this.checkDrawable;
                if (drawable != null) {
                    drawable.setColorFilter(new PorterDuffColorFilter(this.color, PorterDuff.Mode.MULTIPLY));
                }
                if (LocaleController.isRTL) {
                    this.valueTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.checkDrawable, (Drawable) null);
                    return;
                } else {
                    this.valueTextView.setCompoundDrawablesWithIntrinsicBounds(this.checkDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
                    return;
                }
            }
            this.valueTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }

        public void setValue(CharSequence charSequence) {
            this.valueTextView.setText(charSequence);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            updateStatus();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(20), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m50dp(20) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        SharedConfig.loadProxyList();
        this.currentConnectionState = ConnectionsManager.getInstance(this.currentAccount).getConnectionState();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.proxyChangedByRotation);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.proxySettingsChanged);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.proxyCheckDone);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdateConnectionState);
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        this.useProxySettings = globalMainSettings.getBoolean("proxy_enabled", false) && !SharedConfig.proxyList.isEmpty();
        this.useProxyForCalls = globalMainSettings.getBoolean("proxy_enabled_calls", false);
        updateRows(true);
        return true;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.proxyChangedByRotation);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.proxySettingsChanged);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.proxyCheckDone);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdateConnectionState);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString("ProxySettings", C3316R.string.ProxySettings));
        if (AndroidUtilities.isTablet()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        this.actionBar.setAllowOverlayTitle(false);
        this.actionBar.setActionBarMenuOnItemClick(new C3381ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ProxyListActivity.1
            @Override // org.telegram.p048ui.ActionBar.C3381ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ProxyListActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.ProxyListActivity.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                drawSectionBackground(canvas, ProxyListActivity.this.proxyStartRow, ProxyListActivity.this.proxyEndRow, Theme.getColor("windowBackgroundWhite"));
                super.dispatchDraw(canvas);
            }
        };
        this.listView = recyclerListView;
        ((DefaultItemAnimator) recyclerListView.getItemAnimator()).setDelayAnimations(false);
        ((DefaultItemAnimator) this.listView.getItemAnimator()).setTranslationInterpolator(CubicBezierInterpolator.DEFAULT);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        ((FrameLayout) this.fragmentView).addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                ProxyListActivity.this.lambda$createView$1(view, i);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                boolean lambda$createView$2;
                lambda$createView$2 = ProxyListActivity.this.lambda$createView$2(view, i);
                return lambda$createView$2;
            }
        });
        ActionBarMenu createActionMode = this.actionBar.createActionMode();
        NumberTextView numberTextView = new NumberTextView(createActionMode.getContext());
        this.selectedCountTextView = numberTextView;
        numberTextView.setTextSize(18);
        this.selectedCountTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.selectedCountTextView.setTextColor(Theme.getColor("actionBarActionModeDefaultIcon"));
        createActionMode.addView(this.selectedCountTextView, LayoutHelper.createLinear(0, -1, 1.0f, 72, 0, 0, 0));
        this.selectedCountTextView.setOnTouchListener(ProxyListActivity$$ExternalSyntheticLambda1.INSTANCE);
        createActionMode.addItemWithWidth(1, C3316R.C3318drawable.msg_share, AndroidUtilities.m50dp(54));
        createActionMode.addItemWithWidth(0, C3316R.C3318drawable.msg_delete, AndroidUtilities.m50dp(54));
        this.actionBar.setActionBarMenuOnItemClick(new C63853(context));
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view, int i) {
        TextCheckCell textCheckCell;
        if (i == this.proxyButtonForceVisibleRow) {
            ((TextCheckCell) view).setChecked(!textCheckCell.isChecked());
            SharedConfig.setProxyButtonForceVisible(!SharedConfig.isProxyButtonForceVisible);
        } else if (i == this.useProxyRow) {
            if (SharedConfig.currentProxy == null) {
                if (!this.proxyList.isEmpty()) {
                    SharedConfig.currentProxy = this.proxyList.get(0);
                    if (!this.useProxySettings) {
                        MessagesController.getGlobalMainSettings();
                        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
                        edit.putString("proxy_ip", SharedConfig.currentProxy.address);
                        edit.putString("proxy_pass", SharedConfig.currentProxy.password);
                        edit.putString("proxy_user", SharedConfig.currentProxy.username);
                        edit.putInt("proxy_port", SharedConfig.currentProxy.port);
                        edit.putString("proxy_secret", SharedConfig.currentProxy.secret);
                        edit.commit();
                    }
                } else {
                    presentFragment(new ProxySettingsActivity());
                    return;
                }
            }
            this.useProxySettings = !this.useProxySettings;
            updateRows(true);
            MessagesController.getGlobalMainSettings();
            ((TextCheckCell) view).setChecked(this.useProxySettings);
            if (!this.useProxySettings) {
                RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(this.callsRow);
                if (holder != null) {
                    View view2 = holder.itemView;
                    if (view2 instanceof TextCheckCell) {
                        ((TextCheckCell) view2).setChecked(false);
                    }
                }
                this.useProxyForCalls = false;
            }
            SharedPreferences.Editor edit2 = MessagesController.getGlobalMainSettings().edit();
            edit2.putBoolean("proxy_enabled", this.useProxySettings);
            edit2.commit();
            boolean z = this.useProxySettings;
            SharedConfig.ProxyInfo proxyInfo = SharedConfig.currentProxy;
            ConnectionsManager.setProxySettings(z, proxyInfo.address, proxyInfo.port, proxyInfo.username, proxyInfo.password, proxyInfo.secret);
            NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
            int i2 = NotificationCenter.proxySettingsChanged;
            globalInstance.removeObserver(this, i2);
            NotificationCenter.getGlobalInstance().postNotificationName(i2, new Object[0]);
            NotificationCenter.getGlobalInstance().addObserver(this, i2);
            for (int i3 = this.proxyStartRow; i3 < this.proxyEndRow; i3++) {
                RecyclerListView.Holder holder2 = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(i3);
                if (holder2 != null) {
                    ((TextDetailProxyCell) holder2.itemView).updateStatus();
                }
            }
        } else if (i == this.rotationRow) {
            boolean z2 = !SharedConfig.proxyRotationEnabled;
            SharedConfig.proxyRotationEnabled = z2;
            ((TextCheckCell) view).setChecked(z2);
            SharedConfig.saveConfig();
            updateRows(true);
        } else if (i == this.callsRow) {
            boolean z3 = !this.useProxyForCalls;
            this.useProxyForCalls = z3;
            ((TextCheckCell) view).setChecked(z3);
            SharedPreferences.Editor edit3 = MessagesController.getGlobalMainSettings().edit();
            edit3.putBoolean("proxy_enabled_calls", this.useProxyForCalls);
            edit3.commit();
        } else if (i >= this.proxyStartRow && i < this.proxyEndRow) {
            if (!this.selectedItems.isEmpty()) {
                this.listAdapter.toggleSelected(i);
                return;
            }
            SharedConfig.ProxyInfo proxyInfo2 = this.proxyList.get(i - this.proxyStartRow);
            this.useProxySettings = true;
            SharedPreferences.Editor edit4 = MessagesController.getGlobalMainSettings().edit();
            edit4.putString("proxy_ip", proxyInfo2.address);
            edit4.putString("proxy_pass", proxyInfo2.password);
            edit4.putString("proxy_user", proxyInfo2.username);
            edit4.putInt("proxy_port", proxyInfo2.port);
            edit4.putString("proxy_secret", proxyInfo2.secret);
            edit4.putBoolean("proxy_enabled", this.useProxySettings);
            if (!proxyInfo2.secret.isEmpty()) {
                this.useProxyForCalls = false;
                edit4.putBoolean("proxy_enabled_calls", false);
            }
            edit4.commit();
            SharedConfig.currentProxy = proxyInfo2;
            for (int i4 = this.proxyStartRow; i4 < this.proxyEndRow; i4++) {
                RecyclerListView.Holder holder3 = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(i4);
                if (holder3 != null) {
                    TextDetailProxyCell textDetailProxyCell = (TextDetailProxyCell) holder3.itemView;
                    textDetailProxyCell.setChecked(textDetailProxyCell.currentInfo == proxyInfo2);
                    textDetailProxyCell.updateStatus();
                }
            }
            updateRows(false);
            RecyclerListView.Holder holder4 = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(this.useProxyRow);
            if (holder4 != null) {
                ((TextCheckCell) holder4.itemView).setChecked(true);
            }
            boolean z4 = this.useProxySettings;
            SharedConfig.ProxyInfo proxyInfo3 = SharedConfig.currentProxy;
            ConnectionsManager.setProxySettings(z4, proxyInfo3.address, proxyInfo3.port, proxyInfo3.username, proxyInfo3.password, proxyInfo3.secret);
        } else if (i == this.proxyAddRow) {
            presentFragment(new ProxySettingsActivity());
        } else if (i == this.deleteAllRow) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setMessage(LocaleController.getString(C3316R.string.DeleteAllProxiesConfirm));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3316R.string.Cancel), null);
            builder.setTitle(LocaleController.getString(C3316R.string.DeleteProxyTitle));
            builder.setPositiveButton(LocaleController.getString(C3316R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    ProxyListActivity.this.lambda$createView$0(dialogInterface, i5);
                }
            });
            AlertDialog create = builder.create();
            showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor("dialogTextRed"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(DialogInterface dialogInterface, int i) {
        for (SharedConfig.ProxyInfo proxyInfo : this.proxyList) {
            SharedConfig.deleteProxy(proxyInfo);
        }
        this.useProxyForCalls = false;
        this.useProxySettings = false;
        NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
        int i2 = NotificationCenter.proxySettingsChanged;
        globalInstance.removeObserver(this, i2);
        NotificationCenter.getGlobalInstance().postNotificationName(i2, new Object[0]);
        NotificationCenter.getGlobalInstance().addObserver(this, i2);
        updateRows(true);
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(this.useProxyRow, 0);
            this.listAdapter.notifyItemChanged(this.callsRow, 0);
            this.listAdapter.clearSelected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$2(View view, int i) {
        if (i < this.proxyStartRow || i >= this.proxyEndRow) {
            return false;
        }
        this.listAdapter.toggleSelected(i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProxyListActivity$3 */
    /* loaded from: classes5.dex */
    public class C63853 extends C3381ActionBar.ActionBarMenuOnItemClick {
        final /* synthetic */ Context val$context;

        C63853(Context context) {
            this.val$context = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(DialogInterface dialogInterface, int i) {
            for (SharedConfig.ProxyInfo proxyInfo : ProxyListActivity.this.selectedItems) {
                SharedConfig.deleteProxy(proxyInfo);
            }
            if (SharedConfig.currentProxy == null) {
                ProxyListActivity.this.useProxyForCalls = false;
                ProxyListActivity.this.useProxySettings = false;
            }
            NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
            ProxyListActivity proxyListActivity = ProxyListActivity.this;
            int i2 = NotificationCenter.proxySettingsChanged;
            globalInstance.removeObserver(proxyListActivity, i2);
            NotificationCenter.getGlobalInstance().postNotificationName(i2, new Object[0]);
            NotificationCenter.getGlobalInstance().addObserver(ProxyListActivity.this, i2);
            ProxyListActivity.this.updateRows(true);
            if (ProxyListActivity.this.listAdapter != null) {
                if (SharedConfig.currentProxy == null) {
                    ProxyListActivity.this.listAdapter.notifyItemChanged(ProxyListActivity.this.useProxyRow, 0);
                    ProxyListActivity.this.listAdapter.notifyItemChanged(ProxyListActivity.this.callsRow, 0);
                }
                ProxyListActivity.this.listAdapter.clearSelected();
            }
        }

        @Override // org.telegram.p048ui.ActionBar.C3381ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1) {
                if (!ProxyListActivity.this.selectedItems.isEmpty()) {
                    ProxyListActivity.this.listAdapter.clearSelected();
                } else {
                    ProxyListActivity.this.finishFragment();
                }
            } else if (i == 0) {
                AlertDialog.Builder builder = new AlertDialog.Builder(ProxyListActivity.this.getParentActivity());
                builder.setMessage(LocaleController.getString(ProxyListActivity.this.selectedItems.size() > 1 ? C3316R.string.DeleteProxyMultiConfirm : C3316R.string.DeleteProxyConfirm));
                builder.setNegativeButton(LocaleController.getString("Cancel", C3316R.string.Cancel), null);
                builder.setTitle(LocaleController.getString(C3316R.string.DeleteProxyTitle));
                builder.setPositiveButton(LocaleController.getString(C3316R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProxyListActivity$3$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ProxyListActivity.C63853.this.lambda$onItemClick$0(dialogInterface, i2);
                    }
                });
                AlertDialog create = builder.create();
                ProxyListActivity.this.showDialog(create);
                TextView textView = (TextView) create.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor("dialogTextRed"));
                }
            } else if (i == 1) {
                StringBuilder sb = new StringBuilder();
                for (SharedConfig.ProxyInfo proxyInfo : ProxyListActivity.this.selectedItems) {
                    if (sb.length() > 0) {
                        sb.append("\n\n");
                    }
                    sb.append(proxyInfo.getLink());
                }
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", sb.toString());
                Intent createChooser = Intent.createChooser(intent, LocaleController.getString(ProxyListActivity.this.selectedItems.size() > 1 ? C3316R.string.ShareLinks : C3316R.string.ShareLink));
                createChooser.setFlags(268435456);
                this.val$context.startActivity(createChooser);
                if (ProxyListActivity.this.listAdapter != null) {
                    ProxyListActivity.this.listAdapter.clearSelected();
                }
            }
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        if (this.selectedItems.isEmpty()) {
            return true;
        }
        this.listAdapter.clearSelected();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateRows(boolean r9) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProxyListActivity.updateRows(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateRows$4(boolean z, SharedConfig.ProxyInfo proxyInfo, SharedConfig.ProxyInfo proxyInfo2) {
        SharedConfig.ProxyInfo proxyInfo3 = SharedConfig.currentProxy;
        long j = proxyInfo3 == proxyInfo ? -200000L : 0L;
        if (!proxyInfo.available) {
            j += 100000;
        }
        long j2 = proxyInfo3 != proxyInfo2 ? 0L : -200000L;
        if (!proxyInfo2.available) {
            j2 += 100000;
        }
        return Long.compare((!z || proxyInfo == proxyInfo3) ? j + proxyInfo.ping : SharedConfig.proxyList.indexOf(proxyInfo) * 10000, (!z || proxyInfo2 == SharedConfig.currentProxy) ? proxyInfo2.ping + j2 : SharedConfig.proxyList.indexOf(proxyInfo2) * 10000);
    }

    private void checkProxyList() {
        int size = this.proxyList.size();
        for (int i = 0; i < size; i++) {
            final SharedConfig.ProxyInfo proxyInfo = this.proxyList.get(i);
            if (!proxyInfo.checking && SystemClock.elapsedRealtime() - proxyInfo.availableCheckTime >= 120000) {
                proxyInfo.checking = true;
                proxyInfo.proxyCheckPingId = ConnectionsManager.getInstance(this.currentAccount).checkProxy(proxyInfo.address, proxyInfo.port, proxyInfo.username, proxyInfo.password, proxyInfo.secret, new RequestTimeDelegate() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda5
                    @Override // org.telegram.tgnet.RequestTimeDelegate
                    public final void run(long j) {
                        ProxyListActivity.lambda$checkProxyList$6(SharedConfig.ProxyInfo.this, j);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkProxyList$6(final SharedConfig.ProxyInfo proxyInfo, final long j) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ProxyListActivity.lambda$checkProxyList$5(SharedConfig.ProxyInfo.this, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkProxyList$5(SharedConfig.ProxyInfo proxyInfo, long j) {
        proxyInfo.availableCheckTime = SystemClock.elapsedRealtime();
        proxyInfo.checking = false;
        if (j == -1) {
            proxyInfo.available = false;
            proxyInfo.ping = 0L;
        } else {
            proxyInfo.ping = j;
            proxyInfo.available = true;
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.proxyCheckDone, proxyInfo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        DownloadController.getInstance(this.currentAccount).checkAutodownloadSettings();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0095  */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void didReceivedNotification(int r6, int r7, java.lang.Object... r8) {
        /*
            r5 = this;
            int r0 = org.telegram.messenger.NotificationCenter.proxyChangedByRotation
            r1 = 0
            if (r6 != r0) goto L14
            org.telegram.ui.Components.RecyclerListView r6 = r5.listView
            org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda2 r7 = new org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda2
            r7.<init>()
            r6.forAllChild(r7)
            r5.updateRows(r1)
            goto Lb1
        L14:
            int r0 = org.telegram.messenger.NotificationCenter.proxySettingsChanged
            r2 = 1
            if (r6 != r0) goto L1e
            r5.updateRows(r2)
            goto Lb1
        L1e:
            int r0 = org.telegram.messenger.NotificationCenter.didUpdateConnectionState
            if (r6 != r0) goto L5d
            org.telegram.tgnet.ConnectionsManager r6 = org.telegram.tgnet.ConnectionsManager.getInstance(r7)
            int r6 = r6.getConnectionState()
            int r7 = r5.currentConnectionState
            if (r7 == r6) goto Lb1
            r5.currentConnectionState = r6
            org.telegram.ui.Components.RecyclerListView r6 = r5.listView
            if (r6 == 0) goto Lb1
            org.telegram.messenger.SharedConfig$ProxyInfo r6 = org.telegram.messenger.SharedConfig.currentProxy
            if (r6 == 0) goto Lb1
            java.util.List<org.telegram.messenger.SharedConfig$ProxyInfo> r7 = r5.proxyList
            int r6 = r7.indexOf(r6)
            if (r6 < 0) goto L54
            org.telegram.ui.Components.RecyclerListView r7 = r5.listView
            int r8 = r5.proxyStartRow
            int r6 = r6 + r8
            androidx.recyclerview.widget.RecyclerView$ViewHolder r6 = r7.findViewHolderForAdapterPosition(r6)
            org.telegram.ui.Components.RecyclerListView$Holder r6 = (org.telegram.p048ui.Components.RecyclerListView.Holder) r6
            if (r6 == 0) goto L54
            android.view.View r6 = r6.itemView
            org.telegram.ui.ProxyListActivity$TextDetailProxyCell r6 = (org.telegram.p048ui.ProxyListActivity.TextDetailProxyCell) r6
            r6.updateStatus()
        L54:
            int r6 = r5.currentConnectionState
            r7 = 3
            if (r6 != r7) goto Lb1
            r5.updateRows(r2)
            goto Lb1
        L5d:
            int r7 = org.telegram.messenger.NotificationCenter.proxyCheckDone
            if (r6 != r7) goto Lb1
            org.telegram.ui.Components.RecyclerListView r6 = r5.listView
            if (r6 == 0) goto Lb1
            r6 = r8[r1]
            org.telegram.messenger.SharedConfig$ProxyInfo r6 = (org.telegram.messenger.SharedConfig.ProxyInfo) r6
            java.util.List<org.telegram.messenger.SharedConfig$ProxyInfo> r7 = r5.proxyList
            int r6 = r7.indexOf(r6)
            if (r6 < 0) goto L85
            org.telegram.ui.Components.RecyclerListView r7 = r5.listView
            int r8 = r5.proxyStartRow
            int r6 = r6 + r8
            androidx.recyclerview.widget.RecyclerView$ViewHolder r6 = r7.findViewHolderForAdapterPosition(r6)
            org.telegram.ui.Components.RecyclerListView$Holder r6 = (org.telegram.p048ui.Components.RecyclerListView.Holder) r6
            if (r6 == 0) goto L85
            android.view.View r6 = r6.itemView
            org.telegram.ui.ProxyListActivity$TextDetailProxyCell r6 = (org.telegram.p048ui.ProxyListActivity.TextDetailProxyCell) r6
            r6.updateStatus()
        L85:
            boolean r6 = r5.wasCheckedAllList
            if (r6 != 0) goto Lac
            java.util.List<org.telegram.messenger.SharedConfig$ProxyInfo> r6 = r5.proxyList
            java.util.Iterator r6 = r6.iterator()
        L8f:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto La8
            java.lang.Object r7 = r6.next()
            org.telegram.messenger.SharedConfig$ProxyInfo r7 = (org.telegram.messenger.SharedConfig.ProxyInfo) r7
            boolean r8 = r7.checking
            if (r8 != 0) goto La7
            long r7 = r7.availableCheckTime
            r3 = 0
            int r7 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r7 != 0) goto L8f
        La7:
            r1 = r2
        La8:
            if (r1 != 0) goto Lac
            r5.wasCheckedAllList = r2
        Lac:
            if (r1 != 0) goto Lb1
            r5.updateRows(r2)
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProxyListActivity.didReceivedNotification(int, int, java.lang.Object[]):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$7(View view) {
        View view2 = this.listView.getChildViewHolder(view).itemView;
        if (view2 instanceof TextDetailProxyCell) {
            TextDetailProxyCell textDetailProxyCell = (TextDetailProxyCell) view2;
            textDetailProxyCell.setChecked(textDetailProxyCell.currentInfo == SharedConfig.currentProxy);
            textDetailProxyCell.updateStatus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProxyListActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
            setHasStableIds(true);
        }

        public void toggleSelected(int i) {
            if (i < ProxyListActivity.this.proxyStartRow || i >= ProxyListActivity.this.proxyEndRow) {
                return;
            }
            SharedConfig.ProxyInfo proxyInfo = (SharedConfig.ProxyInfo) ProxyListActivity.this.proxyList.get(i - ProxyListActivity.this.proxyStartRow);
            if (ProxyListActivity.this.selectedItems.contains(proxyInfo)) {
                ProxyListActivity.this.selectedItems.remove(proxyInfo);
            } else {
                ProxyListActivity.this.selectedItems.add(proxyInfo);
            }
            notifyItemChanged(i, 1);
            checkActionMode();
        }

        public void clearSelected() {
            ProxyListActivity.this.selectedItems.clear();
            notifyItemRangeChanged(ProxyListActivity.this.proxyStartRow, ProxyListActivity.this.proxyEndRow - ProxyListActivity.this.proxyStartRow, 1);
            checkActionMode();
        }

        private void checkActionMode() {
            int size = ProxyListActivity.this.selectedItems.size();
            boolean isActionModeShowed = ((BaseFragment) ProxyListActivity.this).actionBar.isActionModeShowed();
            if (size <= 0) {
                if (isActionModeShowed) {
                    ((BaseFragment) ProxyListActivity.this).actionBar.hideActionMode();
                    notifyItemRangeChanged(ProxyListActivity.this.proxyStartRow, ProxyListActivity.this.proxyEndRow - ProxyListActivity.this.proxyStartRow, 2);
                    return;
                }
                return;
            }
            ProxyListActivity.this.selectedCountTextView.setNumber(size, isActionModeShowed);
            if (isActionModeShowed) {
                return;
            }
            ((BaseFragment) ProxyListActivity.this).actionBar.showActionMode();
            notifyItemRangeChanged(ProxyListActivity.this.proxyStartRow, ProxyListActivity.this.proxyEndRow - ProxyListActivity.this.proxyStartRow, 2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ProxyListActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            switch (viewHolder.getItemViewType()) {
                case 0:
                    if (i == ProxyListActivity.this.proxyShadowRow && ProxyListActivity.this.callsRow == -1) {
                        viewHolder.itemView.setBackgroundDrawable(Theme.getThemedDrawable(this.mContext, C3316R.C3318drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                        return;
                    } else {
                        viewHolder.itemView.setBackgroundDrawable(Theme.getThemedDrawable(this.mContext, C3316R.C3318drawable.greydivider, "windowBackgroundGrayShadow"));
                        return;
                    }
                case 1:
                    TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                    textSettingsCell.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
                    if (i == ProxyListActivity.this.proxyAddRow) {
                        textSettingsCell.setText(LocaleController.getString("AddProxy", C3316R.string.AddProxy), ProxyListActivity.this.deleteAllRow != -1);
                        return;
                    } else if (i == ProxyListActivity.this.deleteAllRow) {
                        textSettingsCell.setTextColor(Theme.getColor("windowBackgroundWhiteRedText4"));
                        textSettingsCell.setText(LocaleController.getString(C3316R.string.DeleteAllProxies), false);
                        return;
                    } else {
                        return;
                    }
                case 2:
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    if (i == ProxyListActivity.this.connectionsHeaderRow) {
                        headerCell.setText(LocaleController.getString("ProxyConnections", C3316R.string.ProxyConnections));
                        return;
                    }
                    return;
                case 3:
                    TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                    if (i != ProxyListActivity.this.proxyButtonForceVisibleRow) {
                        if (i == ProxyListActivity.this.useProxyRow) {
                            textCheckCell.setTextAndCheck(LocaleController.getString("UseProxySettings", C3316R.string.UseProxySettings), ProxyListActivity.this.useProxySettings, ProxyListActivity.this.rotationRow != -1);
                            return;
                        } else if (i == ProxyListActivity.this.callsRow) {
                            textCheckCell.setTextAndCheck(LocaleController.getString("UseProxyForCalls", C3316R.string.UseProxyForCalls), ProxyListActivity.this.useProxyForCalls, false);
                            return;
                        } else if (i == ProxyListActivity.this.rotationRow) {
                            textCheckCell.setTextAndCheck(LocaleController.getString(C3316R.string.UseProxyRotation), SharedConfig.proxyRotationEnabled, true);
                            return;
                        } else {
                            return;
                        }
                    }
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3316R.string.settings_proxy_button_in_toolbar), SharedConfig.isProxyButtonForceVisible, false);
                    return;
                case 4:
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    if (i != ProxyListActivity.this.callsDetailRow) {
                        if (i == ProxyListActivity.this.rotationTimeoutInfoRow) {
                            textInfoPrivacyCell.setText(LocaleController.getString(C3316R.string.ProxyRotationTimeoutInfo));
                            textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(this.mContext, C3316R.C3318drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                            return;
                        }
                        return;
                    }
                    textInfoPrivacyCell.setText(LocaleController.getString("UseProxyForCallsInfo", C3316R.string.UseProxyForCallsInfo));
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(this.mContext, C3316R.C3318drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                    return;
                case 5:
                    TextDetailProxyCell textDetailProxyCell = (TextDetailProxyCell) viewHolder.itemView;
                    SharedConfig.ProxyInfo proxyInfo = (SharedConfig.ProxyInfo) ProxyListActivity.this.proxyList.get(i - ProxyListActivity.this.proxyStartRow);
                    textDetailProxyCell.setProxy(proxyInfo);
                    textDetailProxyCell.setChecked(SharedConfig.currentProxy == proxyInfo);
                    textDetailProxyCell.setItemSelected(ProxyListActivity.this.selectedItems.contains(ProxyListActivity.this.proxyList.get(i - ProxyListActivity.this.proxyStartRow)), false);
                    textDetailProxyCell.setSelectionEnabled(!ProxyListActivity.this.selectedItems.isEmpty(), false);
                    return;
                case 6:
                    if (i == ProxyListActivity.this.rotationTimeoutRow) {
                        SlideChooseView slideChooseView = (SlideChooseView) viewHolder.itemView;
                        ArrayList arrayList = new ArrayList(ProxyRotationController.ROTATION_TIMEOUTS);
                        String[] strArr = new String[arrayList.size()];
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            strArr[i2] = LocaleController.formatString(C3316R.string.ProxyRotationTimeoutSeconds, arrayList.get(i2));
                        }
                        slideChooseView.setCallback(ProxyListActivity$ListAdapter$$ExternalSyntheticLambda0.INSTANCE);
                        slideChooseView.setOptions(SharedConfig.proxyRotationTimeout, strArr);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onBindViewHolder$0(int i) {
            SharedConfig.proxyRotationTimeout = i;
            SharedConfig.saveConfig();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
            if (viewHolder.getItemViewType() == 5 && !list.isEmpty()) {
                TextDetailProxyCell textDetailProxyCell = (TextDetailProxyCell) viewHolder.itemView;
                if (list.contains(1)) {
                    textDetailProxyCell.setItemSelected(ProxyListActivity.this.selectedItems.contains(ProxyListActivity.this.proxyList.get(i - ProxyListActivity.this.proxyStartRow)), true);
                }
                if (list.contains(2)) {
                    textDetailProxyCell.setSelectionEnabled(!ProxyListActivity.this.selectedItems.isEmpty(), true);
                }
            } else if (viewHolder.getItemViewType() == 3 && list.contains(0)) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                if (i != ProxyListActivity.this.proxyButtonForceVisibleRow) {
                    if (i == ProxyListActivity.this.useProxyRow) {
                        textCheckCell.setChecked(ProxyListActivity.this.useProxySettings);
                        return;
                    } else if (i == ProxyListActivity.this.callsRow) {
                        textCheckCell.setChecked(ProxyListActivity.this.useProxyForCalls);
                        return;
                    } else if (i == ProxyListActivity.this.rotationRow) {
                        textCheckCell.setChecked(SharedConfig.proxyRotationEnabled);
                        return;
                    } else {
                        return;
                    }
                }
                textCheckCell.setChecked(SharedConfig.isProxyButtonForceVisible);
            } else {
                super.onBindViewHolder(viewHolder, i, list);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 3) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                int adapterPosition = viewHolder.getAdapterPosition();
                if (adapterPosition != ProxyListActivity.this.proxyButtonForceVisibleRow) {
                    if (adapterPosition == ProxyListActivity.this.useProxyRow) {
                        textCheckCell.setChecked(ProxyListActivity.this.useProxySettings);
                        return;
                    } else if (adapterPosition == ProxyListActivity.this.callsRow) {
                        textCheckCell.setChecked(ProxyListActivity.this.useProxyForCalls);
                        return;
                    } else if (adapterPosition == ProxyListActivity.this.rotationRow) {
                        textCheckCell.setChecked(SharedConfig.proxyRotationEnabled);
                        return;
                    } else {
                        return;
                    }
                }
                textCheckCell.setChecked(SharedConfig.isProxyButtonForceVisible);
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            return adapterPosition == ProxyListActivity.this.useProxyRow || adapterPosition == ProxyListActivity.this.rotationRow || adapterPosition == ProxyListActivity.this.callsRow || adapterPosition == ProxyListActivity.this.proxyAddRow || adapterPosition == ProxyListActivity.this.deleteAllRow || (adapterPosition >= ProxyListActivity.this.proxyStartRow && adapterPosition < ProxyListActivity.this.proxyEndRow) || adapterPosition == ProxyListActivity.this.proxyButtonForceVisibleRow;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View shadowSectionCell;
            if (i == 0) {
                shadowSectionCell = new ShadowSectionCell(this.mContext);
            } else if (i == 1) {
                shadowSectionCell = new TextSettingsCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 2) {
                shadowSectionCell = new HeaderCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 3) {
                shadowSectionCell = new TextCheckCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 4) {
                shadowSectionCell = new TextInfoPrivacyCell(this.mContext);
                shadowSectionCell.setBackground(Theme.getThemedDrawable(this.mContext, C3316R.C3318drawable.greydivider, "windowBackgroundGrayShadow"));
            } else if (i == 6) {
                shadowSectionCell = new SlideChooseView(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else {
                shadowSectionCell = new TextDetailProxyCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            }
            shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(shadowSectionCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            if (i == ProxyListActivity.this.useProxyShadowRow) {
                return -1L;
            }
            if (i == ProxyListActivity.this.proxyShadowRow) {
                return -2L;
            }
            if (i == ProxyListActivity.this.proxyAddRow) {
                return -3L;
            }
            if (i == ProxyListActivity.this.useProxyRow) {
                return -4L;
            }
            if (i == ProxyListActivity.this.callsRow) {
                return -5L;
            }
            if (i == ProxyListActivity.this.connectionsHeaderRow) {
                return -6L;
            }
            if (i == ProxyListActivity.this.deleteAllRow) {
                return -8L;
            }
            if (i == ProxyListActivity.this.rotationRow) {
                return -9L;
            }
            if (i == ProxyListActivity.this.rotationTimeoutRow) {
                return -10L;
            }
            if (i == ProxyListActivity.this.rotationTimeoutInfoRow) {
                return -11L;
            }
            if (i < ProxyListActivity.this.proxyStartRow || i >= ProxyListActivity.this.proxyEndRow) {
                return -7L;
            }
            return ((SharedConfig.ProxyInfo) ProxyListActivity.this.proxyList.get(i - ProxyListActivity.this.proxyStartRow)).hashCode();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == ProxyListActivity.this.useProxyShadowRow || i == ProxyListActivity.this.proxyShadowRow) {
                return 0;
            }
            if (i == ProxyListActivity.this.proxyAddRow || i == ProxyListActivity.this.deleteAllRow) {
                return 1;
            }
            if (i == ProxyListActivity.this.useProxyRow || i == ProxyListActivity.this.rotationRow || i == ProxyListActivity.this.callsRow || i == ProxyListActivity.this.proxyButtonForceVisibleRow) {
                return 3;
            }
            if (i == ProxyListActivity.this.connectionsHeaderRow) {
                return 2;
            }
            if (i == ProxyListActivity.this.rotationTimeoutRow) {
                return 6;
            }
            return (i < ProxyListActivity.this.proxyStartRow || i >= ProxyListActivity.this.proxyEndRow) ? 4 : 5;
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, TextCheckCell.class, HeaderCell.class, TextDetailProxyCell.class}, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteValueText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailProxyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueText6"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGreenText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteRedText4"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"checkImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText3"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"));
        return arrayList;
    }
}
