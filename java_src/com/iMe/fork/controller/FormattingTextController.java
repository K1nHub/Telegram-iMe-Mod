package com.iMe.fork.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.Editable;
import android.text.style.CharacterStyle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.FormattingTextController;
import com.iMe.fork.enums.FormattingPanelType;
import com.iMe.fork.models.backup.Backup;
import com.iMe.p031ui.formatting_messages.FormattingMessagesKeyboardContainer;
import com.iMe.p031ui.formatting_messages.FormattingMessagesWeb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.RadioColorCell;
import org.telegram.p043ui.Components.EditTextCaption;
import org.telegram.p043ui.Components.TextStyleSpan;
import org.telegram.p043ui.Components.URLSpanReplacement;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: FormattingTextController.kt */
/* loaded from: classes4.dex */
public final class FormattingTextController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, FormattingTextController> accountInstances = new ConcurrentHashMap<>(5);
    private View formattingMessagesContainer;
    private FormattingPanelType formattingPanelType;
    private final List<TextStyle> listSpansFlags;
    private final List<Integer> listTextStyleSpanFlags;

    public static final FormattingTextController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public FormattingTextController(int i) {
        super(i);
        List<Integer> mutableListOf;
        this.listSpansFlags = new ArrayList();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(1, 2, 4, 8, 16, 256, 6);
        this.listTextStyleSpanFlags = mutableListOf;
        this.formattingPanelType = FormattingPanelType.DEFAULT;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    public final void setFormattingMessagesContainer(View view) {
        this.formattingMessagesContainer = view;
    }

    public final List<TextStyle> getListSpansFlags() {
        return this.listSpansFlags;
    }

    public final List<Integer> getListTextStyleSpanFlags() {
        return this.listTextStyleSpanFlags;
    }

    public final FormattingPanelType getFormattingPanelType() {
        return this.formattingPanelType;
    }

    public final void setFormattingPanelType(FormattingPanelType formattingPanelType) {
        Intrinsics.checkNotNullParameter(formattingPanelType, "<set-?>");
        this.formattingPanelType = formattingPanelType;
    }

    public final List<TextStyle> getAllSpans(EditTextCaption messageEditText) {
        List split$default;
        Intrinsics.checkNotNullParameter(messageEditText, "messageEditText");
        Editable text = messageEditText.getText();
        Intrinsics.checkNotNullExpressionValue(text, "messageEditText.text");
        String obj = text.subSequence(messageEditText.getSelectionStart(), messageEditText.getSelectionEnd()).toString();
        int selectionStart = messageEditText.getSelectionStart();
        this.listSpansFlags.clear();
        split$default = StringsKt__StringsKt.split$default((CharSequence) obj, new String[]{" "}, false, 0, 6, (Object) null);
        int i = 0;
        int i2 = 0;
        for (Object obj2 : split$default) {
            int i3 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String str = (String) obj2;
            if (i == 0) {
                i2 = selectionStart;
            }
            if (i != 0) {
                selectionStart = i2;
            }
            int length = selectionStart + str.length() + i;
            getTextStyle(messageEditText, i2, length);
            i = i3;
            int i4 = i2;
            i2 = length;
            selectionStart = i4;
        }
        return this.listSpansFlags;
    }

    public final boolean searchTag(int i) {
        List<TextStyle> list = this.listSpansFlags;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (TextStyle textStyle : list) {
            if (textStyle.getListFlags().contains(Integer.valueOf(i))) {
                return true;
            }
        }
        return false;
    }

    public final void replaceSpans(EditTextCaption editTextCaption, View view) {
        EditTextCaption.EditTextCaptionDelegate delegate;
        EditTextCaption.EditTextCaptionDelegate delegate2;
        Editable text;
        EditTextCaption.EditTextCaptionDelegate delegate3;
        Intrinsics.checkNotNullParameter(view, "view");
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) tag).intValue();
        if (searchTag(intValue)) {
            Iterator<T> it = this.listSpansFlags.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TextStyle textStyle = (TextStyle) it.next();
                if (textStyle.getListFlags().indexOf(Integer.valueOf(intValue)) != -1) {
                    textStyle.getListFlags().remove(Integer.valueOf(intValue));
                    int summaryFlags = textStyle.getSummaryFlags() - intValue;
                    textStyle.setSummaryFlags(summaryFlags);
                    if (summaryFlags == 0) {
                        MediaDataController.addStyleToText(null, textStyle.getStartIndexWord(), textStyle.getEndIndexWord(), editTextCaption != null ? editTextCaption.getText() : null, false);
                        if ((textStyle.getUrl().length() > 0) && editTextCaption != null && (text = editTextCaption.getText()) != null) {
                            text.setSpan(new URLSpanReplacement(textStyle.getUrl()), textStyle.getStartIndexWord(), textStyle.getEndIndexWord(), 33);
                        }
                        if (editTextCaption != null && (delegate2 = editTextCaption.getDelegate()) != null) {
                            delegate2.onSpansChanged();
                        }
                    } else {
                        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                        textStyleRun.flags = summaryFlags;
                        MediaDataController.addStyleToText(new TextStyleSpan(textStyleRun), textStyle.getStartIndexWord(), textStyle.getEndIndexWord(), editTextCaption != null ? editTextCaption.getText() : null, false);
                        if (editTextCaption != null && (delegate3 = editTextCaption.getDelegate()) != null) {
                            delegate3.onSpansChanged();
                        }
                    }
                }
            }
            View view2 = this.formattingMessagesContainer;
            if (view2 instanceof FormattingMessagesKeyboardContainer) {
                ((FormattingMessagesKeyboardContainer) view2).updateBackgroundButton((TextView) view, false);
                return;
            } else if (view2 instanceof FormattingMessagesWeb) {
                ((FormattingMessagesWeb) view2).updateBackgroundButton(view, false);
                return;
            } else {
                return;
            }
        }
        for (TextStyle textStyle2 : this.listSpansFlags) {
            textStyle2.getListFlags().add(Integer.valueOf(intValue));
            textStyle2.setSummaryFlags(textStyle2.getSummaryFlags() + intValue);
            TextStyleSpan.TextStyleRun textStyleRun2 = new TextStyleSpan.TextStyleRun();
            textStyleRun2.flags = textStyle2.getSummaryFlags();
            MediaDataController.addStyleToText(new TextStyleSpan(textStyleRun2), textStyle2.getStartIndexWord(), textStyle2.getEndIndexWord(), editTextCaption != null ? editTextCaption.getText() : null, true);
            if (editTextCaption != null && (delegate = editTextCaption.getDelegate()) != null) {
                delegate.onSpansChanged();
            }
        }
        View view3 = this.formattingMessagesContainer;
        if (view3 instanceof FormattingMessagesKeyboardContainer) {
            ((FormattingMessagesKeyboardContainer) view3).updateBackgroundButton((TextView) view, true);
        } else if (view3 instanceof FormattingMessagesWeb) {
            ((FormattingMessagesWeb) view3).updateBackgroundButton(view, true);
        }
    }

    public final AlertDialog createChooseSelectedFormattingPanelType(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        final AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getInternalString(C3473R.string.settings_messages_formatting_title));
        builder.setNegativeButton(LocaleController.getInternalString(C3473R.string.common_cancel), null);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        FormattingPanelType[] values = FormattingPanelType.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            FormattingPanelType formattingPanelType = values[i];
            RadioColorCell radioColorCell = new RadioColorCell(context);
            radioColorCell.setTag(formattingPanelType);
            radioColorCell.setPadding(AndroidUtilities.m72dp(4), 0, AndroidUtilities.m72dp(4), 0);
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue(formattingPanelType.getTitle(), this.formattingPanelType == formattingPanelType);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.controller.FormattingTextController$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FormattingTextController.createChooseSelectedFormattingPanelType$lambda$7$lambda$6(FormattingTextController.this, builder, view);
                }
            });
            linearLayout.addView(radioColorCell);
        }
        return builder.setView(linearLayout).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createChooseSelectedFormattingPanelType$lambda$7$lambda$6(FormattingTextController this$0, AlertDialog.Builder builder, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(builder, "$builder");
        Intrinsics.checkNotNullParameter(view, "view");
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.iMe.fork.enums.FormattingPanelType");
        FormattingPanelType formattingPanelType = (FormattingPanelType) tag;
        if (formattingPanelType == this$0.formattingPanelType) {
            return;
        }
        this$0.formattingPanelType = formattingPanelType;
        this$0.saveConfig();
        builder.getDismissRunnable().run();
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.formattingPanelType = FormattingPanelType.Companion.mapNameToEnum(preferences.getString(TelegramPreferenceKeys.Global.selectedFormattingPanelType(), TelegramPreferenceKeys.Global.Default.selectedFormattingPanelType().name()));
    }

    public final void saveConfig() {
        getUserConfig().getPreferencesPublic().edit().putString(TelegramPreferenceKeys.Global.selectedFormattingPanelType(), this.formattingPanelType.name()).apply();
    }

    public final void restoreBackup(Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.getFormattingPanelType() != null) {
            this.formattingPanelType = backup.getFormattingPanelType();
        }
        saveConfig();
    }

    private final void getTextStyle(EditTextCaption editTextCaption, int i, int i2) {
        CharacterStyle[] characterStyle = (CharacterStyle[]) editTextCaption.getText().getSpans(i, i2, CharacterStyle.class);
        Intrinsics.checkNotNullExpressionValue(characterStyle, "characterStyle");
        if ((!(characterStyle.length == 0)) && (characterStyle[0] instanceof TextStyleSpan)) {
            CharacterStyle characterStyle2 = characterStyle[0];
            Intrinsics.checkNotNull(characterStyle2, "null cannot be cast to non-null type org.telegram.ui.Components.TextStyleSpan");
            List<Integer> list = getList(((TextStyleSpan) characterStyle2).getStyleFlags());
            List<TextStyle> list2 = this.listSpansFlags;
            CharacterStyle characterStyle3 = characterStyle[0];
            Intrinsics.checkNotNull(characterStyle3, "null cannot be cast to non-null type org.telegram.ui.Components.TextStyleSpan");
            list2.add(new TextStyle(i, i2, ((TextStyleSpan) characterStyle3).getStyleFlags(), "", list));
            return;
        }
        if ((!(characterStyle.length == 0)) && (characterStyle[0] instanceof URLSpanReplacement)) {
            CharacterStyle characterStyle4 = characterStyle[0];
            Intrinsics.checkNotNull(characterStyle4, "null cannot be cast to non-null type org.telegram.ui.Components.URLSpanReplacement");
            URLSpanReplacement uRLSpanReplacement = (URLSpanReplacement) characterStyle4;
            if (uRLSpanReplacement.getTextStyleRun() != null) {
                List<Integer> list3 = getList(uRLSpanReplacement.getTextStyleRun().flags);
                List<TextStyle> list4 = this.listSpansFlags;
                int i3 = uRLSpanReplacement.getTextStyleRun().flags;
                String url = uRLSpanReplacement.getURL();
                Intrinsics.checkNotNullExpressionValue(url, "urlSpanReplacement.url");
                list4.add(new TextStyle(i, i2, i3, url, list3));
                return;
            }
            List<TextStyle> list5 = this.listSpansFlags;
            String url2 = uRLSpanReplacement.getURL();
            Intrinsics.checkNotNullExpressionValue(url2, "urlSpanReplacement.url");
            list5.add(new TextStyle(i, i2, 0, url2, new ArrayList()));
            return;
        }
        this.listSpansFlags.add(new TextStyle(i, i2, 0, "", new ArrayList()));
    }

    private final List<Integer> getList(int i) {
        ArrayList arrayList = new ArrayList();
        List<Integer> listTextStyleSpanFlags = FormattingMessagesKeyboardContainer.Companion.getListTextStyleSpanFlags();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = listTextStyleSpanFlags.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((Number) next).intValue() <= i) {
                arrayList2.add(next);
            }
        }
        while (!arrayList2.isEmpty()) {
            arrayList.add(CollectionsKt.last(arrayList2));
            i -= ((Number) CollectionsKt.last(arrayList2)).intValue();
            List<Integer> listTextStyleSpanFlags2 = FormattingMessagesKeyboardContainer.Companion.getListTextStyleSpanFlags();
            arrayList2 = new ArrayList();
            for (Object obj : listTextStyleSpanFlags2) {
                if (((Number) obj).intValue() <= i) {
                    arrayList2.add(obj);
                }
            }
        }
        return arrayList;
    }

    /* compiled from: FormattingTextController.kt */
    /* loaded from: classes4.dex */
    public static final class TextStyle {
        private final int endIndexWord;
        private final List<Integer> listFlags;
        private final int startIndexWord;
        private int summaryFlags;
        private String url;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TextStyle) {
                TextStyle textStyle = (TextStyle) obj;
                return this.startIndexWord == textStyle.startIndexWord && this.endIndexWord == textStyle.endIndexWord && this.summaryFlags == textStyle.summaryFlags && Intrinsics.areEqual(this.url, textStyle.url) && Intrinsics.areEqual(this.listFlags, textStyle.listFlags);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.startIndexWord * 31) + this.endIndexWord) * 31) + this.summaryFlags) * 31) + this.url.hashCode()) * 31) + this.listFlags.hashCode();
        }

        public String toString() {
            return "TextStyle(startIndexWord=" + this.startIndexWord + ", endIndexWord=" + this.endIndexWord + ", summaryFlags=" + this.summaryFlags + ", url=" + this.url + ", listFlags=" + this.listFlags + ')';
        }

        public TextStyle(int i, int i2, int i3, String url, List<Integer> listFlags) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(listFlags, "listFlags");
            this.startIndexWord = i;
            this.endIndexWord = i2;
            this.summaryFlags = i3;
            this.url = url;
            this.listFlags = listFlags;
        }

        public final int getStartIndexWord() {
            return this.startIndexWord;
        }

        public final int getEndIndexWord() {
            return this.endIndexWord;
        }

        public final int getSummaryFlags() {
            return this.summaryFlags;
        }

        public final void setSummaryFlags(int i) {
            this.summaryFlags = i;
        }

        public final String getUrl() {
            return this.url;
        }

        public final void setUrl(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.url = str;
        }

        public final List<Integer> getListFlags() {
            return this.listFlags;
        }
    }

    /* compiled from: FormattingTextController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final FormattingTextController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (FormattingTextController) tmp0.invoke(obj);
        }

        public final FormattingTextController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = FormattingTextController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, FormattingTextController> function1 = new Function1<Integer, FormattingTextController>() { // from class: com.iMe.fork.controller.FormattingTextController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final FormattingTextController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new FormattingTextController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.FormattingTextController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    FormattingTextController instance$lambda$0;
                    instance$lambda$0 = FormattingTextController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) =\n   …ontroller(accountIndex) }");
            return (FormattingTextController) computeIfAbsent;
        }
    }
}
