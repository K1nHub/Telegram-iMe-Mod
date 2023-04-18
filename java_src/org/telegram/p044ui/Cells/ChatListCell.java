package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import android.text.TextPaint;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.RadioButton;
/* renamed from: org.telegram.ui.Cells.ChatListCell */
/* loaded from: classes5.dex */
public class ChatListCell extends LinearLayout {
    private C3570ListView[] listView;

    protected void didSelectChatType(boolean z, boolean z2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.ChatListCell$ListView */
    /* loaded from: classes5.dex */
    public class C3570ListView extends FrameLayout {
        private RadioButton button;
        private boolean isCompactMode;
        private boolean isThreeLines;
        private RectF rect;
        private TextPaint textPaint;

        public C3570ListView(ChatListCell chatListCell, Context context, boolean z, boolean z2) {
            super(context);
            int i;
            String str;
            this.rect = new RectF();
            boolean z3 = true;
            this.textPaint = new TextPaint(1);
            setWillNotDraw(false);
            this.isThreeLines = z;
            if (z2) {
                this.isCompactMode = true;
                setContentDescription(LocaleController.getInternalString(C3242R.string.chat_settings_chat_list_compact_mode));
            } else {
                if (z) {
                    i = C3242R.string.ChatListExpanded;
                    str = "ChatListExpanded";
                } else {
                    i = C3242R.string.ChatListDefault;
                    str = "ChatListDefault";
                }
                setContentDescription(LocaleController.getString(str, i));
            }
            this.textPaint.setTextSize(AndroidUtilities.m50dp(13));
            RadioButton radioButton = new RadioButton(context, chatListCell) { // from class: org.telegram.ui.Cells.ChatListCell.ListView.1
                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    C3570ListView.this.invalidate();
                }
            };
            this.button = radioButton;
            radioButton.setSize(AndroidUtilities.m50dp(20));
            addView(this.button, LayoutHelper.createFrame(22, 22, 53, 0, 26, 10, 0));
            RadioButton radioButton2 = this.button;
            boolean z4 = this.isThreeLines;
            radioButton2.setChecked((z4 && SharedConfig.useThreeLinesLayout) || !(z4 || SharedConfig.useThreeLinesLayout), false);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.button.getLayoutParams();
            layoutParams.gravity = 81;
            layoutParams.rightMargin = 0;
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = AndroidUtilities.m50dp(49);
            this.button.setLayoutParams(layoutParams);
            boolean z5 = SharedConfig.isDialogsCompactModeEnabled;
            boolean z6 = z5 && this.isCompactMode;
            boolean z7 = (z5 || SharedConfig.useThreeLinesLayout || this.isCompactMode || this.isThreeLines) ? false : true;
            boolean z8 = !SharedConfig.isDialogsCompactModeEnabled && SharedConfig.useThreeLinesLayout && this.isThreeLines;
            RadioButton radioButton3 = this.button;
            if (!z6 && !z7 && !z8) {
                z3 = false;
            }
            radioButton3.setChecked(z3, false);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            String str;
            int color = Theme.getColor("switchTrack");
            int red = Color.red(color);
            int green = Color.green(color);
            int blue = Color.blue(color);
            this.button.setColor(Theme.getColor("radioBackground"), Theme.getColor("radioBackgroundChecked"));
            this.rect.set(AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(1), getMeasuredWidth() - AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(73));
            this.rect.bottom += AndroidUtilities.m50dp(32);
            Theme.chat_instantViewRectPaint.setColor(Color.argb((int) (this.button.getProgress() * 43.0f), red, green, blue));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(6), Theme.chat_instantViewRectPaint);
            this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m50dp(74));
            this.rect.bottom += AndroidUtilities.m50dp(30);
            Theme.dialogs_onlineCirclePaint.setColor(Color.argb((int) ((1.0f - this.button.getProgress()) * 31.0f), red, green, blue));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(6), Theme.dialogs_onlineCirclePaint);
            if (this.isThreeLines) {
                i = C3242R.string.ChatListExpanded;
                str = "ChatListExpanded";
            } else {
                i = C3242R.string.ChatListDefault;
                str = "ChatListDefault";
            }
            String string = LocaleController.getString(str, i);
            if (this.isCompactMode) {
                string = LocaleController.getInternalString(C3242R.string.chat_settings_chat_list_compact_mode);
            }
            this.textPaint.setColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            canvas.drawText(string, (getMeasuredWidth() - ((int) Math.ceil(this.textPaint.measureText(string)))) / 2, AndroidUtilities.m50dp(128), this.textPaint);
            int i2 = 22;
            int i3 = 204;
            if (this.isCompactMode) {
                int i4 = 0;
                while (i4 < 3) {
                    int m51dp = AndroidUtilities.m51dp(i4 != 0 ? 17.5f + (i4 * 19) : 17.5f);
                    Theme.dialogs_onlineCirclePaint.setColor(Color.argb((i4 == 0 || i4 == 2) ? 204 : 90, red, green, blue));
                    canvas.drawCircle(AndroidUtilities.m50dp(22), m51dp, AndroidUtilities.m51dp(7.5f), Theme.dialogs_onlineCirclePaint);
                    Theme.dialogs_onlineCirclePaint.setColor(Color.argb(204, red, green, blue));
                    this.rect.set(AndroidUtilities.m51dp(37.5f), m51dp - AndroidUtilities.m50dp(2), getMeasuredWidth() - AndroidUtilities.m51dp(14.5f), m51dp + AndroidUtilities.m50dp(2));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), Theme.dialogs_onlineCirclePaint);
                    i4++;
                }
                return;
            }
            int i5 = 0;
            while (i5 < 2) {
                int m50dp = AndroidUtilities.m50dp(i5 == 0 ? 21 : 53);
                Theme.dialogs_onlineCirclePaint.setColor(Color.argb(i5 == 0 ? i3 : 90, red, green, blue));
                canvas.drawCircle(AndroidUtilities.m50dp(i2), m50dp, AndroidUtilities.m50dp(11), Theme.dialogs_onlineCirclePaint);
                int i6 = 0;
                while (true) {
                    if (i6 < (this.isThreeLines ? 3 : 2)) {
                        Theme.dialogs_onlineCirclePaint.setColor(Color.argb(i6 == 0 ? i3 : 90, red, green, blue));
                        if (this.isThreeLines) {
                            float f = i6 * 7;
                            this.rect.set(AndroidUtilities.m50dp(41), m50dp - AndroidUtilities.m51dp(8.3f - f), getMeasuredWidth() - AndroidUtilities.m50dp(i6 != 0 ? 48 : 72), m50dp - AndroidUtilities.m51dp(5.3f - f));
                            this.rect.right = getMeasuredWidth() - AndroidUtilities.m50dp(i6 == 0 ? 22 : 11);
                            canvas.drawRoundRect(this.rect, AndroidUtilities.dpf2(1.5f), AndroidUtilities.dpf2(1.5f), Theme.dialogs_onlineCirclePaint);
                        } else {
                            int i7 = i6 * 10;
                            this.rect.set(AndroidUtilities.m50dp(41), m50dp - AndroidUtilities.m50dp(7 - i7), getMeasuredWidth() - AndroidUtilities.m50dp(i6 != 0 ? 48 : 72), m50dp - AndroidUtilities.m50dp(3 - i7));
                            this.rect.right = getMeasuredWidth() - AndroidUtilities.m50dp(i6 == 0 ? 22 : 11);
                            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), Theme.dialogs_onlineCirclePaint);
                        }
                        i6++;
                        i3 = 204;
                    }
                }
                i5++;
                i2 = 22;
                i3 = 204;
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            int i;
            String str;
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(RadioButton.class.getName());
            accessibilityNodeInfo.setChecked(this.button.isChecked());
            accessibilityNodeInfo.setCheckable(true);
            if (this.isThreeLines) {
                i = C3242R.string.ChatListExpanded;
                str = "ChatListExpanded";
            } else {
                i = C3242R.string.ChatListDefault;
                str = "ChatListDefault";
            }
            accessibilityNodeInfo.setContentDescription(LocaleController.getString(str, i));
        }
    }

    public ChatListCell(Context context) {
        super(context);
        this.listView = new C3570ListView[3];
        setOrientation(0);
        setPadding(AndroidUtilities.m50dp(21), AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(21), 0);
        int i = 0;
        while (true) {
            C3570ListView[] c3570ListViewArr = this.listView;
            if (i >= c3570ListViewArr.length) {
                return;
            }
            final boolean z = i == 0;
            final boolean z2 = i == 2;
            c3570ListViewArr[i] = new C3570ListView(this, context, z2, z);
            addView(this.listView[i], LayoutHelper.createLinear(-1, -1, 1.0f, i == 0 ? 0 : 5, 0, i == 2 ? 0 : 5, 0));
            this.listView[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.ChatListCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatListCell.this.lambda$new$0(z2, z, view);
                }
            });
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(boolean z, boolean z2, View view) {
        int i = 0;
        while (true) {
            C3570ListView[] c3570ListViewArr = this.listView;
            if (i < c3570ListViewArr.length) {
                c3570ListViewArr[i].button.setChecked(this.listView[i] == view, true);
                i++;
            } else {
                didSelectChatType(z, z2);
                return;
            }
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        int i = 0;
        while (true) {
            C3570ListView[] c3570ListViewArr = this.listView;
            if (i >= c3570ListViewArr.length) {
                return;
            }
            c3570ListViewArr[i].invalidate();
            i++;
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(155), 1073741824));
    }
}
