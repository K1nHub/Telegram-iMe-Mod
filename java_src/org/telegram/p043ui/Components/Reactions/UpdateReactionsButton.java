package org.telegram.p043ui.Components.Reactions;

import android.content.Context;
import android.text.SpannableStringBuilder;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
/* renamed from: org.telegram.ui.Components.Reactions.UpdateReactionsButton */
/* loaded from: classes6.dex */
public class UpdateReactionsButton extends ButtonWithCounterView {
    private SpannableStringBuilder lock;

    public UpdateReactionsButton(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
    }

    public void setDefaultState() {
        setText(new SpannableStringBuilder(LocaleController.getString("ReactionUpdateReactionsBtn", C3632R.string.ReactionUpdateReactionsBtn)), false);
        this.lock = new SpannableStringBuilder("l");
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C3632R.C3634drawable.mini_switch_lock);
        coloredImageSpan.setTopOffset(1);
        this.lock.setSpan(coloredImageSpan, 0, 1, 33);
    }

    public void setLvlRequiredState(int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.lock).append((CharSequence) LocaleController.formatPluralString("ReactionLevelRequiredBtn", i, new Object[0]));
        setSubText(spannableStringBuilder, true);
    }

    public void removeLvlRequiredState() {
        setSubText(null, true);
    }
}
