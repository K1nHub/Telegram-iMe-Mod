package org.telegram.p044ui.Components;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.Emoji;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.tgnet.TLRPC$KeyboardButton;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonRow;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonSimpleWebView;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonWebView;
import org.telegram.tgnet.TLRPC$TL_replyKeyboardMarkup;
/* renamed from: org.telegram.ui.Components.BotKeyboardView */
/* loaded from: classes6.dex */
public class BotKeyboardView extends LinearLayout {
    private TLRPC$TL_replyKeyboardMarkup botButtons;
    private int buttonHeight;
    private ArrayList<ImageView> buttonIcons;
    private ArrayList<TextView> buttonViews;
    private LinearLayout container;
    private BotKeyboardViewDelegate delegate;
    private boolean isFullSize;
    private int panelHeight;
    private final Theme.ResourcesProvider resourcesProvider;
    private ScrollView scrollView;

    /* renamed from: org.telegram.ui.Components.BotKeyboardView$BotKeyboardViewDelegate */
    /* loaded from: classes6.dex */
    public interface BotKeyboardViewDelegate {
        void didPressedButton(TLRPC$KeyboardButton tLRPC$KeyboardButton);
    }

    public BotKeyboardView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.buttonViews = new ArrayList<>();
        this.buttonIcons = new ArrayList<>();
        this.resourcesProvider = resourcesProvider;
        setOrientation(1);
        ScrollView scrollView = new ScrollView(context);
        this.scrollView = scrollView;
        addView(scrollView);
        LinearLayout linearLayout = new LinearLayout(context);
        this.container = linearLayout;
        linearLayout.setOrientation(1);
        this.scrollView.addView(this.container);
        updateColors();
    }

    public void updateColors() {
        AndroidUtilities.setScrollViewEdgeEffectColor(this.scrollView, getThemedColor("chat_emojiPanelBackground"));
        setBackgroundColor(getThemedColor("chat_emojiPanelBackground"));
        for (int i = 0; i < this.buttonViews.size(); i++) {
            this.buttonViews.get(i).setTextColor(getThemedColor("chat_botKeyboardButtonText"));
            this.buttonViews.get(i).setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), getThemedColor("chat_botKeyboardButtonBackground"), getThemedColor("chat_botKeyboardButtonBackgroundPressed")));
            this.buttonIcons.get(i).setColorFilter(getThemedColor("chat_botKeyboardButtonText"));
        }
        invalidate();
    }

    public void setDelegate(BotKeyboardViewDelegate botKeyboardViewDelegate) {
        this.delegate = botKeyboardViewDelegate;
    }

    public void setPanelHeight(int i) {
        TLRPC$TL_replyKeyboardMarkup tLRPC$TL_replyKeyboardMarkup;
        this.panelHeight = i;
        if (!this.isFullSize || (tLRPC$TL_replyKeyboardMarkup = this.botButtons) == null || tLRPC$TL_replyKeyboardMarkup.rows.size() == 0) {
            return;
        }
        this.buttonHeight = !this.isFullSize ? 42 : (int) Math.max(42.0f, (((this.panelHeight - AndroidUtilities.m50dp(30)) - ((this.botButtons.rows.size() - 1) * AndroidUtilities.m50dp(10))) / this.botButtons.rows.size()) / AndroidUtilities.density);
        int childCount = this.container.getChildCount();
        int m50dp = AndroidUtilities.m50dp(this.buttonHeight);
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.container.getChildAt(i2);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (layoutParams.height != m50dp) {
                layoutParams.height = m50dp;
                childAt.setLayoutParams(layoutParams);
            }
        }
    }

    public void invalidateViews() {
        for (int i = 0; i < this.buttonViews.size(); i++) {
            this.buttonViews.get(i).invalidate();
            this.buttonIcons.get(i).invalidate();
        }
    }

    public boolean isFullSize() {
        return this.isFullSize;
    }

    public void setButtons(TLRPC$TL_replyKeyboardMarkup tLRPC$TL_replyKeyboardMarkup) {
        int i;
        TLRPC$TL_replyKeyboardMarkup tLRPC$TL_replyKeyboardMarkup2 = tLRPC$TL_replyKeyboardMarkup;
        this.botButtons = tLRPC$TL_replyKeyboardMarkup2;
        this.container.removeAllViews();
        this.buttonViews.clear();
        this.buttonIcons.clear();
        int i2 = 0;
        this.scrollView.scrollTo(0, 0);
        if (tLRPC$TL_replyKeyboardMarkup2 == null || this.botButtons.rows.size() == 0) {
            return;
        }
        boolean z = !tLRPC$TL_replyKeyboardMarkup2.resize;
        this.isFullSize = z;
        int i3 = 10;
        this.buttonHeight = !z ? 42 : (int) Math.max(42.0f, (((this.panelHeight - AndroidUtilities.m50dp(30)) - ((this.botButtons.rows.size() - 1) * AndroidUtilities.m50dp(10))) / this.botButtons.rows.size()) / AndroidUtilities.density);
        int i4 = 0;
        while (i4 < tLRPC$TL_replyKeyboardMarkup2.rows.size()) {
            TLRPC$TL_keyboardButtonRow tLRPC$TL_keyboardButtonRow = tLRPC$TL_replyKeyboardMarkup2.rows.get(i4);
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(i2);
            this.container.addView(linearLayout, LayoutHelper.createLinear(-1, this.buttonHeight, 15, i4 == 0 ? 15 : i3, 15, i4 == tLRPC$TL_replyKeyboardMarkup2.rows.size() + (-1) ? 15 : i2));
            float size = 1.0f / tLRPC$TL_keyboardButtonRow.buttons.size();
            int i5 = i2;
            while (i5 < tLRPC$TL_keyboardButtonRow.buttons.size()) {
                TLRPC$KeyboardButton tLRPC$KeyboardButton = tLRPC$TL_keyboardButtonRow.buttons.get(i5);
                Button button = new Button(this, getContext(), tLRPC$KeyboardButton);
                FrameLayout frameLayout = new FrameLayout(getContext());
                frameLayout.addView(button, LayoutHelper.createFrame(-1, -1));
                linearLayout.addView(frameLayout, LayoutHelper.createLinear(0, -1, size, 0, 0, i5 != tLRPC$TL_keyboardButtonRow.buttons.size() + (-1) ? i3 : i2, 0));
                button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.BotKeyboardView$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BotKeyboardView.this.lambda$setButtons$0(view);
                    }
                });
                this.buttonViews.add(button);
                ImageView imageView = new ImageView(getContext());
                imageView.setColorFilter(getThemedColor("chat_botKeyboardButtonText"));
                if ((tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonWebView) || (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonSimpleWebView)) {
                    imageView.setImageResource(C3242R.C3244drawable.bot_webview);
                    i = 0;
                    imageView.setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    i = 0;
                }
                this.buttonIcons.add(imageView);
                frameLayout.addView(imageView, LayoutHelper.createFrame(12, 12, 53, 0, 8, 8, 0));
                i5++;
                i2 = i;
                i3 = 10;
            }
            i4++;
            i3 = 10;
            tLRPC$TL_replyKeyboardMarkup2 = tLRPC$TL_replyKeyboardMarkup;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setButtons$0(View view) {
        this.delegate.didPressedButton((TLRPC$KeyboardButton) view.getTag());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.BotKeyboardView$Button */
    /* loaded from: classes6.dex */
    public class Button extends TextView {
        public Button(BotKeyboardView botKeyboardView, Context context, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
            super(context);
            setTag(tLRPC$KeyboardButton);
            setTextColor(botKeyboardView.getThemedColor("chat_botKeyboardButtonText"));
            setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), botKeyboardView.getThemedColor("chat_botKeyboardButtonBackground"), botKeyboardView.getThemedColor("chat_botKeyboardButtonBackgroundPressed")));
            setTextSize(1, 16.0f);
            setGravity(17);
            setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            setText(Emoji.replaceEmoji(tLRPC$KeyboardButton.text, getPaint().getFontMetricsInt(), false));
        }
    }

    public int getKeyboardHeight() {
        TLRPC$TL_replyKeyboardMarkup tLRPC$TL_replyKeyboardMarkup = this.botButtons;
        if (tLRPC$TL_replyKeyboardMarkup == null) {
            return 0;
        }
        return this.isFullSize ? this.panelHeight : (tLRPC$TL_replyKeyboardMarkup.rows.size() * AndroidUtilities.m50dp(this.buttonHeight)) + AndroidUtilities.m50dp(30) + ((this.botButtons.rows.size() - 1) * AndroidUtilities.m50dp(10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }
}
