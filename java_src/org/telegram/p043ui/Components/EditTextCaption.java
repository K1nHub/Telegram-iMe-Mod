package org.telegram.p043ui.Components;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.CharacterStyle;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.FormattingTextController;
import com.iMe.fork.enums.FormattingPanelType;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.CodeHighlighting;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.utils.CopyUtilities;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.AlertDialogDecor;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.QuoteSpan;
import org.telegram.p043ui.Components.TextStyleSpan;
/* renamed from: org.telegram.ui.Components.EditTextCaption */
/* loaded from: classes6.dex */
public class EditTextCaption extends EditTextBoldCursor {
    public boolean adaptiveCreateLinkDialog;
    private boolean allowTextEntitiesIntersection;
    private String caption;
    private StaticLayout captionLayout;
    private boolean copyPasteShowed;
    private AlertDialog creationLinkDialog;
    private EditTextCaptionDelegate delegate;
    private int hintColor;
    private boolean isInitLineCount;
    private int lineCount;
    private final Theme.ResourcesProvider resourcesProvider;
    private int selectionEnd;
    private int selectionStart;
    private int userNameLength;
    private int xOffset;
    private int yOffset;

    /* renamed from: org.telegram.ui.Components.EditTextCaption$EditTextCaptionDelegate */
    /* loaded from: classes6.dex */
    public interface EditTextCaptionDelegate {
        void onSpansChanged();
    }

    protected void onContextMenuClose() {
    }

    protected void onContextMenuOpen() {
    }

    protected void onLineCountChanged(int i, int i2) {
    }

    public void makeSelectedUrl() {
        makeSelectedUrl(null, null);
    }

    public EditTextCaptionDelegate getDelegate() {
        return this.delegate;
    }

    public EditTextCaption(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.selectionStart = -1;
        this.selectionEnd = -1;
        this.resourcesProvider = resourcesProvider;
        this.quoteColor = Theme.getColor(Theme.key_chat_inQuote, resourcesProvider);
        addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.EditTextCaption.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (EditTextCaption.this.lineCount != EditTextCaption.this.getLineCount()) {
                    if (!EditTextCaption.this.isInitLineCount && EditTextCaption.this.getMeasuredWidth() > 0) {
                        EditTextCaption editTextCaption = EditTextCaption.this;
                        editTextCaption.onLineCountChanged(editTextCaption.lineCount, EditTextCaption.this.getLineCount());
                    }
                    EditTextCaption editTextCaption2 = EditTextCaption.this;
                    editTextCaption2.lineCount = editTextCaption2.getLineCount();
                }
            }
        });
        setClipToPadding(true);
    }

    public void setCaption(String str) {
        String str2 = this.caption;
        if ((str2 == null || str2.length() == 0) && (str == null || str.length() == 0)) {
            return;
        }
        String str3 = this.caption;
        if (str3 == null || !str3.equals(str)) {
            this.caption = str;
            if (str != null) {
                this.caption = str.replace('\n', ' ');
            }
            requestLayout();
        }
    }

    public void setDelegate(EditTextCaptionDelegate editTextCaptionDelegate) {
        this.delegate = editTextCaptionDelegate;
    }

    public void setAllowTextEntitiesIntersection(boolean z) {
        this.allowTextEntitiesIntersection = z;
    }

    public void makeSelectedBold() {
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags |= 1;
        applyTextStyleToSelection(new TextStyleSpan(textStyleRun));
    }

    public void makeSelectedSpoiler() {
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags |= 256;
        applyTextStyleToSelection(new TextStyleSpan(textStyleRun));
        invalidateSpoilers();
    }

    public void makeSelectedItalic() {
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags |= 2;
        applyTextStyleToSelection(new TextStyleSpan(textStyleRun));
    }

    public void makeSelectedMono() {
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags |= 4;
        applyTextStyleToSelection(new TextStyleSpan(textStyleRun));
    }

    public void makeSelectedStrike() {
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags |= 8;
        applyTextStyleToSelection(new TextStyleSpan(textStyleRun));
    }

    public void makeSelectedUnderline() {
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags |= 16;
        applyTextStyleToSelection(new TextStyleSpan(textStyleRun));
    }

    public void makeSelectedQuote() {
        int selectionEnd;
        int i = this.selectionStart;
        if (i >= 0 && (selectionEnd = this.selectionEnd) >= 0) {
            this.selectionEnd = -1;
            this.selectionStart = -1;
        } else {
            i = getSelectionStart();
            selectionEnd = getSelectionEnd();
        }
        int putQuoteToEditable = QuoteSpan.putQuoteToEditable(getText(), i, selectionEnd);
        if (putQuoteToEditable >= 0) {
            setSelection(putQuoteToEditable);
            resetFontMetricsCache();
        }
        invalidateQuotes(true);
        invalidateSpoilers();
    }

    public void makeSelectedUrl(String str, final FormattingTextController formattingTextController) {
        AlertDialog.Builder builder;
        int selectionEnd;
        if (this.adaptiveCreateLinkDialog) {
            builder = new AlertDialogDecor.Builder(getContext(), this.resourcesProvider);
        } else {
            builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        }
        builder.setTitle(LocaleController.getString("CreateLink", C3632R.string.CreateLink));
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(this, getContext()) { // from class: org.telegram.ui.Components.EditTextCaption.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public void onMeasure(int i, int i2) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(64), 1073741824));
            }
        };
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setText("http://");
        if (formattingTextController != null) {
            editTextBoldCursor.setText((str == null || str.isEmpty()) ? "https://" : "https://");
        }
        editTextBoldCursor.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
        editTextBoldCursor.setHintText(LocaleController.getString("URL", C3632R.string.URL));
        editTextBoldCursor.setHeaderHintColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader));
        editTextBoldCursor.setSingleLine(true);
        editTextBoldCursor.setFocusable(true);
        editTextBoldCursor.setTransformHintToHeader(true);
        editTextBoldCursor.setLineColors(getThemedColor(Theme.key_windowBackgroundWhiteInputField), getThemedColor(Theme.key_windowBackgroundWhiteInputFieldActivated), getThemedColor(Theme.key_text_RedRegular));
        editTextBoldCursor.setImeOptions(6);
        editTextBoldCursor.setBackgroundDrawable(null);
        editTextBoldCursor.requestFocus();
        editTextBoldCursor.setPadding(0, 0, 0, 0);
        builder.setView(editTextBoldCursor);
        int i = this.selectionStart;
        if (i >= 0 && (selectionEnd = this.selectionEnd) >= 0) {
            this.selectionEnd = -1;
            this.selectionStart = -1;
        } else {
            i = getSelectionStart();
            selectionEnd = getSelectionEnd();
        }
        final int i2 = i;
        final int i3 = selectionEnd;
        builder.setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.EditTextCaption$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                EditTextCaption.this.lambda$makeSelectedUrl$0(i2, i3, formattingTextController, editTextBoldCursor, dialogInterface, i4);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
        if (this.adaptiveCreateLinkDialog) {
            AlertDialog create = builder.create();
            this.creationLinkDialog = create;
            create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.EditTextCaption$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    EditTextCaption.this.lambda$makeSelectedUrl$1(dialogInterface);
                }
            });
            this.creationLinkDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.EditTextCaption$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    EditTextCaption.lambda$makeSelectedUrl$2(EditTextBoldCursor.this, dialogInterface);
                }
            });
            this.creationLinkDialog.showDelayed(250L);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) editTextBoldCursor.getLayoutParams();
            if (marginLayoutParams != null) {
                if (marginLayoutParams instanceof FrameLayout.LayoutParams) {
                    ((FrameLayout.LayoutParams) marginLayoutParams).gravity = 1;
                }
                int m104dp = AndroidUtilities.m104dp(24);
                marginLayoutParams.leftMargin = m104dp;
                marginLayoutParams.rightMargin = m104dp;
                marginLayoutParams.height = AndroidUtilities.m104dp(36);
                editTextBoldCursor.setLayoutParams(marginLayoutParams);
            }
            editTextBoldCursor.setSelection(0, editTextBoldCursor.getText().length());
            return;
        }
        builder.show().setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.EditTextCaption$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                EditTextCaption.lambda$makeSelectedUrl$3(EditTextBoldCursor.this, dialogInterface);
            }
        });
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) editTextBoldCursor.getLayoutParams();
        if (marginLayoutParams2 != null) {
            if (marginLayoutParams2 instanceof FrameLayout.LayoutParams) {
                ((FrameLayout.LayoutParams) marginLayoutParams2).gravity = 1;
            }
            int m104dp2 = AndroidUtilities.m104dp(24);
            marginLayoutParams2.leftMargin = m104dp2;
            marginLayoutParams2.rightMargin = m104dp2;
            marginLayoutParams2.height = AndroidUtilities.m104dp(36);
            editTextBoldCursor.setLayoutParams(marginLayoutParams2);
        }
        editTextBoldCursor.setSelection(0, editTextBoldCursor.getText().length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeSelectedUrl$0(int i, int i2, FormattingTextController formattingTextController, EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface, int i3) {
        Editable text = getText();
        CharacterStyle[] characterStyleArr = (CharacterStyle[]) text.getSpans(i, i2, CharacterStyle.class);
        if (formattingTextController != null && formattingTextController.getFormattingPanelType() != FormattingPanelType.DEFAULT) {
            for (FormattingTextController.TextStyle textStyle : formattingTextController.getListSpansFlags()) {
                MediaDataController.addStyleToText(null, textStyle.getStartIndexWord(), textStyle.getEndIndexWord(), text, true);
                if (editTextBoldCursor.getText().toString().isEmpty()) {
                    textStyle.setUrl("");
                    TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                    textStyleRun.flags = textStyle.getSummaryFlags();
                    text.setSpan(new TextStyleSpan(textStyleRun), textStyle.getStartIndexWord(), textStyle.getEndIndexWord(), 33);
                } else {
                    textStyle.setUrl(editTextBoldCursor.getText().toString());
                    if (textStyle.getSummaryFlags() > 0) {
                        TextStyleSpan.TextStyleRun textStyleRun2 = new TextStyleSpan.TextStyleRun();
                        textStyleRun2.flags = textStyle.getSummaryFlags();
                        text.setSpan(new URLSpanReplacement(editTextBoldCursor.getText().toString(), textStyleRun2), textStyle.getStartIndexWord(), textStyle.getEndIndexWord(), 33);
                    } else {
                        text.setSpan(new URLSpanReplacement(editTextBoldCursor.getText().toString()), textStyle.getStartIndexWord(), textStyle.getEndIndexWord(), 33);
                    }
                }
            }
            EditTextCaptionDelegate editTextCaptionDelegate = this.delegate;
            if (editTextCaptionDelegate != null) {
                editTextCaptionDelegate.onSpansChanged();
                return;
            }
            return;
        }
        if (characterStyleArr != null && characterStyleArr.length > 0) {
            for (CharacterStyle characterStyle : characterStyleArr) {
                if (!(characterStyle instanceof AnimatedEmojiSpan) && !(characterStyle instanceof QuoteSpan.QuoteStyleSpan)) {
                    int spanStart = text.getSpanStart(characterStyle);
                    int spanEnd = text.getSpanEnd(characterStyle);
                    text.removeSpan(characterStyle);
                    if (spanStart < i) {
                        text.setSpan(characterStyle, spanStart, i, 33);
                    }
                    if (spanEnd > i2) {
                        text.setSpan(characterStyle, i2, spanEnd, 33);
                    }
                }
            }
        }
        try {
            text.setSpan(new URLSpanReplacement(editTextBoldCursor.getText().toString()), i, i2, 33);
        } catch (Exception unused) {
        }
        EditTextCaptionDelegate editTextCaptionDelegate2 = this.delegate;
        if (editTextCaptionDelegate2 != null) {
            editTextCaptionDelegate2.onSpansChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeSelectedUrl$1(DialogInterface dialogInterface) {
        this.creationLinkDialog = null;
        requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$makeSelectedUrl$2(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$makeSelectedUrl$3(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    public boolean closeCreationLinkDialog() {
        AlertDialog alertDialog = this.creationLinkDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return false;
        }
        this.creationLinkDialog.dismiss();
        return true;
    }

    public void makeSelectedRegular() {
        applyTextStyleToSelection(null);
    }

    public void setSelectionOverride(int i, int i2) {
        this.selectionStart = i;
        this.selectionEnd = i2;
    }

    private void applyTextStyleToSelection(TextStyleSpan textStyleSpan) {
        int selectionEnd;
        int i = this.selectionStart;
        if (i >= 0 && (selectionEnd = this.selectionEnd) >= 0) {
            this.selectionEnd = -1;
            this.selectionStart = -1;
        } else {
            i = getSelectionStart();
            selectionEnd = getSelectionEnd();
        }
        MediaDataController.addStyleToText(textStyleSpan, i, selectionEnd, getText(), this.allowTextEntitiesIntersection);
        if (textStyleSpan == null) {
            Editable text = getText();
            for (CodeHighlighting.Span span : (CodeHighlighting.Span[]) text.getSpans(i, selectionEnd, CodeHighlighting.Span.class)) {
                text.removeSpan(span);
            }
            QuoteSpan[] quoteSpanArr = (QuoteSpan[]) text.getSpans(i, selectionEnd, QuoteSpan.class);
            for (int i2 = 0; i2 < quoteSpanArr.length; i2++) {
                text.removeSpan(quoteSpanArr[i2]);
                text.removeSpan(quoteSpanArr[i2].styleSpan);
            }
            if (quoteSpanArr.length > 0) {
                invalidateQuotes(true);
            }
        }
        EditTextCaptionDelegate editTextCaptionDelegate = this.delegate;
        if (editTextCaptionDelegate != null) {
            editTextCaptionDelegate.onSpansChanged();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        if (Build.VERSION.SDK_INT >= 23 || z || !this.copyPasteShowed) {
            try {
                super.onWindowFocusChanged(z);
            } catch (Throwable th) {
                FileLog.m99e(th);
            }
        }
    }

    private ActionMode.Callback overrideCallback(final ActionMode.Callback callback) {
        final ActionMode.Callback callback2 = new ActionMode.Callback() { // from class: org.telegram.ui.Components.EditTextCaption.3
            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                EditTextCaption.this.copyPasteShowed = true;
                EditTextCaption.this.onContextMenuOpen();
                return callback.onCreateActionMode(actionMode, menu);
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return callback.onPrepareActionMode(actionMode, menu);
            }

            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                if (EditTextCaption.this.performMenuAction(menuItem.getItemId())) {
                    actionMode.finish();
                    return true;
                }
                try {
                    return callback.onActionItemClicked(actionMode, menuItem);
                } catch (Exception unused) {
                    return true;
                }
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                EditTextCaption.this.copyPasteShowed = false;
                EditTextCaption.this.onContextMenuClose();
                callback.onDestroyActionMode(actionMode);
            }
        };
        return Build.VERSION.SDK_INT >= 23 ? new ActionMode.Callback2(this) { // from class: org.telegram.ui.Components.EditTextCaption.4
            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return callback2.onCreateActionMode(actionMode, menu);
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return callback2.onPrepareActionMode(actionMode, menu);
            }

            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return callback2.onActionItemClicked(actionMode, menuItem);
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                callback2.onDestroyActionMode(actionMode);
            }

            @Override // android.view.ActionMode.Callback2
            public void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
                ActionMode.Callback callback3 = callback;
                if (callback3 instanceof ActionMode.Callback2) {
                    ((ActionMode.Callback2) callback3).onGetContentRect(actionMode, view, rect);
                } else {
                    super.onGetContentRect(actionMode, view, rect);
                }
            }
        } : callback2;
    }

    public boolean performMenuAction(int i) {
        if (i == C3632R.C3635id.menu_regular) {
            makeSelectedRegular();
            return true;
        } else if (i == C3632R.C3635id.menu_bold) {
            makeSelectedBold();
            return true;
        } else if (i == C3632R.C3635id.menu_italic) {
            makeSelectedItalic();
            return true;
        } else if (i == C3632R.C3635id.menu_mono) {
            makeSelectedMono();
            return true;
        } else if (i == C3632R.C3635id.menu_link) {
            makeSelectedUrl();
            return true;
        } else if (i == C3632R.C3635id.menu_strike) {
            makeSelectedStrike();
            return true;
        } else if (i == C3632R.C3635id.menu_underline) {
            makeSelectedUnderline();
            return true;
        } else if (i == C3632R.C3635id.menu_spoiler) {
            makeSelectedSpoiler();
            return true;
        } else if (i == C3632R.C3635id.menu_quote) {
            makeSelectedQuote();
            return true;
        } else {
            return false;
        }
    }

    @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback, int i) {
        return super.startActionMode(overrideCallback(callback), i);
    }

    @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback) {
        return super.startActionMode(overrideCallback(callback));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int indexOf;
        try {
            this.isInitLineCount = getMeasuredWidth() == 0 && getMeasuredHeight() == 0;
            super.onMeasure(i, i2);
            if (this.isInitLineCount) {
                this.lineCount = getLineCount();
            }
            this.isInitLineCount = false;
        } catch (Exception e) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m104dp(51));
            FileLog.m99e(e);
        }
        this.captionLayout = null;
        String str = this.caption;
        if (str == null || str.length() <= 0) {
            return;
        }
        Editable text = getText();
        if (text.length() <= 1 || text.charAt(0) != '@' || (indexOf = TextUtils.indexOf((CharSequence) text, ' ')) == -1) {
            return;
        }
        TextPaint paint = getPaint();
        int i3 = indexOf + 1;
        CharSequence subSequence = text.subSequence(0, i3);
        int ceil = (int) Math.ceil(paint.measureText(text, 0, i3));
        this.userNameLength = subSequence.length();
        int measuredWidth = ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - ceil;
        CharSequence ellipsize = TextUtils.ellipsize(this.caption, paint, measuredWidth, TextUtils.TruncateAt.END);
        this.xOffset = ceil;
        try {
            StaticLayout staticLayout = new StaticLayout(ellipsize, getPaint(), measuredWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.captionLayout = staticLayout;
            if (staticLayout.getLineCount() > 0) {
                this.xOffset = (int) (this.xOffset + (-this.captionLayout.getLineLeft(0)));
            }
            this.yOffset = ((getMeasuredHeight() - this.captionLayout.getLineBottom(0)) / 2) + AndroidUtilities.m105dp(0.5f);
        } catch (Exception e2) {
            FileLog.m99e(e2);
        }
    }

    public String getCaption() {
        return this.caption;
    }

    @Override // org.telegram.p043ui.Components.EditTextBoldCursor
    public void setHintColor(int i) {
        super.setHintColor(i);
        this.hintColor = i;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.EditTextBoldCursor, org.telegram.p043ui.Components.EditTextEffects, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.offsetY);
        super.onDraw(canvas);
        try {
            if (this.captionLayout != null && this.userNameLength == length()) {
                TextPaint paint = getPaint();
                int color = getPaint().getColor();
                paint.setColor(this.hintColor);
                canvas.save();
                canvas.translate(this.xOffset, this.yOffset);
                this.captionLayout.draw(canvas);
                canvas.restore();
                paint.setColor(color);
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
        canvas.restore();
    }

    @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        if (!TextUtils.isEmpty(this.caption)) {
            wrap.setHintText(this.caption);
        }
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> actionList = wrap.getActionList();
        int i = 0;
        int size = actionList.size();
        while (true) {
            if (i >= size) {
                break;
            }
            AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = actionList.get(i);
            if (accessibilityActionCompat.getId() == 268435456) {
                wrap.removeAction(accessibilityActionCompat);
                break;
            }
            i++;
        }
        if (hasSelection()) {
            wrap.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(C3632R.C3635id.menu_spoiler, LocaleController.getString("Spoiler", C3632R.string.Spoiler)));
            wrap.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(C3632R.C3635id.menu_bold, LocaleController.getString("Bold", C3632R.string.Bold)));
            wrap.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(C3632R.C3635id.menu_italic, LocaleController.getString("Italic", C3632R.string.Italic)));
            wrap.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(C3632R.C3635id.menu_mono, LocaleController.getString("Mono", C3632R.string.Mono)));
            wrap.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(C3632R.C3635id.menu_strike, LocaleController.getString("Strike", C3632R.string.Strike)));
            wrap.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(C3632R.C3635id.menu_underline, LocaleController.getString("Underline", C3632R.string.Underline)));
            wrap.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(C3632R.C3635id.menu_link, LocaleController.getString("CreateLink", C3632R.string.CreateLink)));
            wrap.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(C3632R.C3635id.menu_regular, LocaleController.getString("Regular", C3632R.string.Regular)));
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return performMenuAction(i) || super.performAccessibilityAction(i, bundle);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        if (i == 16908322) {
            ClipData primaryClip = ((ClipboardManager) getContext().getSystemService("clipboard")).getPrimaryClip();
            if (primaryClip != null && primaryClip.getItemCount() == 1 && primaryClip.getDescription().hasMimeType("text/html")) {
                try {
                    Spannable fromHTML = CopyUtilities.fromHTML(primaryClip.getItemAt(0).getHtmlText());
                    Emoji.replaceEmoji((CharSequence) fromHTML, getPaint().getFontMetricsInt(), false, (int[]) null);
                    AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) fromHTML.getSpans(0, fromHTML.length(), AnimatedEmojiSpan.class);
                    if (animatedEmojiSpanArr != null) {
                        for (AnimatedEmojiSpan animatedEmojiSpan : animatedEmojiSpanArr) {
                            animatedEmojiSpan.applyFontMetrics(getPaint().getFontMetricsInt(), AnimatedEmojiDrawable.getCacheTypeForEnterView());
                        }
                    }
                    int max = Math.max(0, getSelectionStart());
                    int min = Math.min(getText().length(), getSelectionEnd());
                    QuoteSpan.QuoteStyleSpan[] quoteStyleSpanArr = (QuoteSpan.QuoteStyleSpan[]) getText().getSpans(max, min, QuoteSpan.QuoteStyleSpan.class);
                    if (quoteStyleSpanArr != null && quoteStyleSpanArr.length > 0) {
                        QuoteSpan.QuoteStyleSpan[] quoteStyleSpanArr2 = (QuoteSpan.QuoteStyleSpan[]) fromHTML.getSpans(0, fromHTML.length(), QuoteSpan.QuoteStyleSpan.class);
                        for (int i2 = 0; i2 < quoteStyleSpanArr2.length; i2++) {
                            fromHTML.removeSpan(quoteStyleSpanArr2[i2]);
                            fromHTML.removeSpan(quoteStyleSpanArr2[i2].span);
                        }
                    } else {
                        QuoteSpan.normalizeQuotes(fromHTML);
                    }
                    setText(getText().replace(max, min, fromHTML));
                    setSelection(fromHTML.length() + max, max + fromHTML.length());
                    return true;
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
            }
        } else {
            try {
                if (i == 16908321) {
                    AndroidUtilities.addToClipboard(getText().subSequence(Math.max(0, getSelectionStart()), Math.min(getText().length(), getSelectionEnd())));
                    return true;
                } else if (i == 16908320) {
                    int max2 = Math.max(0, getSelectionStart());
                    int min2 = Math.min(getText().length(), getSelectionEnd());
                    AndroidUtilities.addToClipboard(getText().subSequence(max2, min2));
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    if (max2 != 0) {
                        spannableStringBuilder.append(getText().subSequence(0, max2));
                    }
                    if (min2 != getText().length()) {
                        spannableStringBuilder.append(getText().subSequence(min2, getText().length()));
                    }
                    setText(spannableStringBuilder);
                    setSelection(max2, max2);
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return super.onTextContextMenuItem(i);
    }
}
