package org.telegram.p048ui.Components;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.storage.domain.model.templates.TemplateModel;
import java.util.ArrayList;
import java.util.List;
import org.fork.controller.TemplatesController;
import org.fork.p046ui.view.TemplateCell;
import org.fork.p046ui.view.TemplatesHeaderCell;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.MenuDrawable;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$BotInfo;
import org.telegram.tgnet.TLRPC$TL_botCommand;
/* renamed from: org.telegram.ui.Components.BotCommandsMenuView */
/* loaded from: classes6.dex */
public class BotCommandsMenuView extends View {
    final MenuDrawable backDrawable;
    Drawable backgroundDrawable;
    boolean drawBackgroundDrawable;
    float expandProgress;
    boolean expanded;
    boolean isOpened;
    boolean isWebView;
    boolean isWebViewOpened;
    int lastSize;
    private String menuText;
    StaticLayout menuTextLayout;
    final Paint paint;
    final RectF rectTmp;
    private Drawable templatesDrawable;
    final TextPaint textPaint;
    RLottieDrawable webViewAnimation;

    protected void onTranslationChanged(float f) {
    }

    public void enableTemplatesMode() {
        this.templatesDrawable = getResources().getDrawable(C3301R.C3303drawable.fork_templates);
    }

    public boolean isTemplatesMode() {
        return this.templatesDrawable != null;
    }

    public BotCommandsMenuView(Context context) {
        super(context);
        this.rectTmp = new RectF();
        this.paint = new Paint(1);
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        MenuDrawable menuDrawable = new MenuDrawable() { // from class: org.telegram.ui.Components.BotCommandsMenuView.1
            @Override // android.graphics.drawable.Drawable
            public void invalidateSelf() {
                super.invalidateSelf();
                BotCommandsMenuView.this.invalidate();
            }
        };
        this.backDrawable = menuDrawable;
        int i = C3301R.C3306raw.bot_webview_sheet_to_cross;
        this.webViewAnimation = new RLottieDrawable(i, String.valueOf(i) + hashCode(), AndroidUtilities.m50dp(20), AndroidUtilities.m50dp(20)) { // from class: org.telegram.ui.Components.BotCommandsMenuView.2
            @Override // android.graphics.drawable.Drawable
            public void invalidateSelf() {
                super.invalidateSelf();
                BotCommandsMenuView.this.invalidate();
            }

            @Override // org.telegram.p048ui.Components.RLottieDrawable
            protected void invalidateInternal() {
                super.invalidateInternal();
                BotCommandsMenuView.this.invalidate();
            }
        };
        this.menuText = LocaleController.getString(C3301R.string.BotsMenuTitle);
        this.drawBackgroundDrawable = true;
        updateColors();
        menuDrawable.setMiniIcon(true);
        menuDrawable.setRotateToBack(false);
        menuDrawable.setRotation(BitmapDescriptorFactory.HUE_RED, false);
        menuDrawable.setCallback(this);
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        menuDrawable.setRoundCap();
        Drawable createSimpleSelectorRoundRectDrawable = Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(16), 0, Theme.getColor("featuredStickers_addButtonPressed"));
        this.backgroundDrawable = createSimpleSelectorRoundRectDrawable;
        createSimpleSelectorRoundRectDrawable.setCallback(this);
        setContentDescription(LocaleController.getString("AccDescrBotMenu", C3301R.string.AccDescrBotMenu));
    }

    public void setDrawBackgroundDrawable(boolean z) {
        this.drawBackgroundDrawable = z;
        invalidate();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.webViewAnimation.setMasterParent(this);
        this.webViewAnimation.setCurrentParentView(this);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.webViewAnimation.setMasterParent(this);
    }

    public void setWebView(boolean z) {
        this.isWebView = z;
        invalidate();
    }

    private void updateColors() {
        this.paint.setColor(Theme.getColor("chat_messagePanelVoiceBackground"));
        int color = Theme.getColor("chat_messagePanelVoiceDuration");
        this.backDrawable.setBackColor(color);
        this.backDrawable.setIconColor(color);
        RLottieDrawable rLottieDrawable = this.webViewAnimation;
        if (rLottieDrawable != null) {
            rLottieDrawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
        this.textPaint.setColor(color);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = (View.MeasureSpec.getSize(i) + View.MeasureSpec.getSize(i2)) << 16;
        if (this.lastSize != size || this.menuTextLayout == null) {
            this.backDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.textPaint.setTextSize(AndroidUtilities.m50dp(15));
            this.lastSize = size;
            if (isTemplatesMode()) {
                this.menuText = "";
            }
            int measureText = (int) this.textPaint.measureText(this.menuText);
            this.menuTextLayout = StaticLayoutEx.createStaticLayout(this.menuText, this.textPaint, measureText, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, measureText, 1);
        }
        onTranslationChanged((this.menuTextLayout.getWidth() + AndroidUtilities.m50dp(4)) * this.expandProgress);
        int m50dp = AndroidUtilities.m50dp(40);
        if (this.expanded) {
            m50dp += this.menuTextLayout.getWidth() + AndroidUtilities.m50dp(4);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(m50dp, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(32), 1073741824));
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0178  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void dispatchDraw(android.graphics.Canvas r14) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.BotCommandsMenuView.dispatchDraw(android.graphics.Canvas):void");
    }

    public boolean setMenuText(String str) {
        if (str == null) {
            str = LocaleController.getString(C3301R.string.BotsMenuTitle);
        }
        String str2 = this.menuText;
        boolean z = str2 == null || !str2.equals(str);
        this.menuText = str;
        this.menuTextLayout = null;
        requestLayout();
        return z;
    }

    public void setExpanded(boolean z, boolean z2) {
        if (this.expanded != z) {
            this.expanded = z;
            if (!z2) {
                this.expandProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
            requestLayout();
            invalidate();
        }
    }

    public boolean isOpened() {
        return this.isOpened;
    }

    /* renamed from: org.telegram.ui.Components.BotCommandsMenuView$BotCommandsAdapter */
    /* loaded from: classes6.dex */
    public static class BotCommandsAdapter extends RecyclerListView.SelectionAdapter {
        private int headerRow;
        private int rowCount;
        private TemplatesDelegate templatesDelegate;
        private boolean templatesMode;
        private int templatesStartRow;
        private List<TemplateModel> templates = new ArrayList();
        ArrayList<String> newResult = new ArrayList<>();
        ArrayList<String> newResultHelp = new ArrayList<>();

        /* renamed from: org.telegram.ui.Components.BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate */
        /* loaded from: classes6.dex */
        public interface TemplatesDelegate {
            void didPressGoToMessage(int i);

            void didPressOpenTemplates(boolean z);

            void didPressSendMessage(TemplateModel templateModel, boolean z);
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public void loadTemplates() {
            this.templates = TemplatesController.getInstance(UserConfig.selectedAccount).getTemplatesList();
            updateRows();
            notifyDataSetChanged();
        }

        public void setTemplatesMode(boolean z) {
            this.templatesMode = z;
        }

        public void setTemplatesDelegate(TemplatesDelegate templatesDelegate) {
            this.templatesDelegate = templatesDelegate;
        }

        public boolean isTemplatesMode() {
            return this.templatesMode;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (isTemplatesMode()) {
                return i == this.headerRow ? 1 : 2;
            }
            return 0;
        }

        private void updateRows() {
            this.rowCount = 0;
            this.rowCount = 0 + 1;
            this.headerRow = 0;
            if (this.templates.isEmpty()) {
                this.templatesStartRow = -1;
                return;
            }
            int i = this.rowCount;
            this.templatesStartRow = i;
            this.rowCount = i + this.templates.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View botCommandView;
            if (i == 1) {
                botCommandView = new TemplatesHeaderCell(viewGroup.getContext());
            } else if (i == 2) {
                botCommandView = new TemplateCell(viewGroup.getContext());
            } else {
                botCommandView = new BotCommandView(viewGroup.getContext());
            }
            botCommandView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(botCommandView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (isTemplatesMode()) {
                View view = viewHolder.itemView;
                if (view instanceof TemplatesHeaderCell) {
                    ((TemplatesHeaderCell) view).bind(this.templates.size(), this.templatesDelegate);
                    return;
                } else if (view instanceof TemplateCell) {
                    ((TemplateCell) view).bind(this.templates.get(i - this.templatesStartRow), this.templatesDelegate);
                    return;
                } else {
                    return;
                }
            }
            BotCommandView botCommandView = (BotCommandView) viewHolder.itemView;
            botCommandView.command.setText(this.newResult.get(i));
            botCommandView.description.setText(this.newResultHelp.get(i));
            botCommandView.commandStr = this.newResult.get(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (isTemplatesMode()) {
                return this.rowCount;
            }
            return this.newResult.size();
        }

        public void setBotInfo(LongSparseArray<TLRPC$BotInfo> longSparseArray) {
            this.newResult.clear();
            this.newResultHelp.clear();
            for (int i = 0; i < longSparseArray.size(); i++) {
                TLRPC$BotInfo valueAt = longSparseArray.valueAt(i);
                for (int i2 = 0; i2 < valueAt.commands.size(); i2++) {
                    TLRPC$TL_botCommand tLRPC$TL_botCommand = valueAt.commands.get(i2);
                    if (tLRPC$TL_botCommand != null && tLRPC$TL_botCommand.command != null) {
                        this.newResult.add("/" + tLRPC$TL_botCommand.command);
                        this.newResultHelp.add(tLRPC$TL_botCommand.description);
                    }
                }
            }
            notifyDataSetChanged();
        }
    }

    public void setOpened(boolean z) {
        if (this.isOpened != z) {
            this.isOpened = z;
        }
        if (this.isWebView) {
            if (this.isWebViewOpened != z) {
                RLottieDrawable rLottieDrawable = this.webViewAnimation;
                rLottieDrawable.stop();
                rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
                rLottieDrawable.setCustomEndFrame(z ? rLottieDrawable.getFramesCount() : 1);
                rLottieDrawable.start();
                this.isWebViewOpened = z;
                return;
            }
            return;
        }
        this.backDrawable.setRotation(z ? 1.0f : BitmapDescriptorFactory.HUE_RED, true);
    }

    /* renamed from: org.telegram.ui.Components.BotCommandsMenuView$BotCommandView */
    /* loaded from: classes6.dex */
    public static class BotCommandView extends LinearLayout {
        TextView command;
        String commandStr;
        TextView description;

        public BotCommandView(Context context) {
            super(context);
            setOrientation(0);
            setPadding(AndroidUtilities.m50dp(16), 0, AndroidUtilities.m50dp(16), 0);
            TextView textView = new TextView(context);
            this.description = textView;
            textView.setTextSize(1, 16.0f);
            this.description.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.description.setTag("windowBackgroundWhiteBlackText");
            this.description.setLines(1);
            this.description.setEllipsize(TextUtils.TruncateAt.END);
            addView(this.description, LayoutHelper.createLinear(-1, -2, 1.0f, 16, 0, 0, AndroidUtilities.m50dp(8), 0));
            TextView textView2 = new TextView(context);
            this.command = textView2;
            textView2.setTextSize(1, 14.0f);
            this.command.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
            this.command.setTag("windowBackgroundWhiteGrayText");
            addView(this.command, LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED, 16));
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(36), 1073741824));
        }

        public String getCommand() {
            return this.commandStr;
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || this.backgroundDrawable == drawable;
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.backgroundDrawable.setState(getDrawableState());
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.backgroundDrawable.jumpToCurrentState();
    }
}
