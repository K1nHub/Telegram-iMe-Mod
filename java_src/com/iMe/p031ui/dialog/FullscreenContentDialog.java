package com.iMe.p031ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.p031ui.custom.ActionButton;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.databinding.ForkFullscreenContentAlertBinding;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: FullscreenContentDialog.kt */
/* renamed from: com.iMe.ui.dialog.FullscreenContentDialog */
/* loaded from: classes4.dex */
public final class FullscreenContentDialog extends AlertDialog.Builder {
    public static final Companion Companion = new Companion(null);
    private ForkFullscreenContentAlertBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullscreenContentDialog(Context context, Integer num, Integer num2, int i, CharSequence title, SpannableStringBuilder description, CharSequence buttonText) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        ForkFullscreenContentAlertBinding inflate = ForkFullscreenContentAlertBinding.inflate(LayoutInflater.from(context));
        this.binding = inflate;
        Intrinsics.checkNotNull(inflate);
        setView(inflate.getRoot());
        ForkFullscreenContentAlertBinding forkFullscreenContentAlertBinding = this.binding;
        Intrinsics.checkNotNull(forkFullscreenContentAlertBinding);
        RLottieImageView lambda$2$lambda$0 = forkFullscreenContentAlertBinding.imageAlertResult;
        if (num != null) {
            lambda$2$lambda$0.setAutoRepeat(true);
            lambda$2$lambda$0.setAnimation(num.intValue(), ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
            lambda$2$lambda$0.playAnimation();
        } else if (num2 != null) {
            lambda$2$lambda$0.setImageResource(num2.intValue());
            if (i != -1) {
                Intrinsics.checkNotNullExpressionValue(lambda$2$lambda$0, "lambda$2$lambda$0");
                ImageViewExtKt.setImageColor(lambda$2$lambda$0, i);
            }
        }
        AppCompatTextView appCompatTextView = forkFullscreenContentAlertBinding.textAlertDescription;
        appCompatTextView.setText(description);
        appCompatTextView.setMovementMethod(LinkMovementMethod.getInstance());
        forkFullscreenContentAlertBinding.textAlertTitle.setText(title);
        forkFullscreenContentAlertBinding.buttonAction.setText(buttonText);
        forkFullscreenContentAlertBinding.textAlertTitle.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
        forkFullscreenContentAlertBinding.textAlertDescription.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.iMe.ui.dialog.FullscreenContentDialog$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                FullscreenContentDialog._init_$lambda$3(FullscreenContentDialog.this, dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$3(FullscreenContentDialog this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.binding = null;
    }

    /* compiled from: FullscreenContentDialog.kt */
    /* renamed from: com.iMe.ui.dialog.FullscreenContentDialog$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AlertDialog newInstance(Context context, int i, int i2, CharSequence title, CharSequence description, CharSequence buttonText, Callbacks$Callback callbacks$Callback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(description, "description");
            Intrinsics.checkNotNullParameter(buttonText, "buttonText");
            return createDialog(new FullscreenContentDialog(context, null, Integer.valueOf(i), i2, title, new SpannableStringBuilder(description), buttonText), callbacks$Callback);
        }

        public final AlertDialog newInstance(Context context, int i, CharSequence title, SpannableStringBuilder description, CharSequence buttonText, Callbacks$Callback callbacks$Callback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(description, "description");
            Intrinsics.checkNotNullParameter(buttonText, "buttonText");
            return createDialog(new FullscreenContentDialog(context, Integer.valueOf(i), null, -1, title, description, buttonText), callbacks$Callback);
        }

        private final AlertDialog createDialog(FullscreenContentDialog fullscreenContentDialog, final Callbacks$Callback callbacks$Callback) {
            ActionButton actionButton;
            final AlertDialog dialog = fullscreenContentDialog.create();
            Intrinsics.checkNotNullExpressionValue(dialog, "createDialog$lambda$0");
            DialogsFactoryKt.setBottomGravity(dialog);
            ForkFullscreenContentAlertBinding forkFullscreenContentAlertBinding = fullscreenContentDialog.binding;
            if (forkFullscreenContentAlertBinding != null && (actionButton = forkFullscreenContentAlertBinding.buttonAction) != null) {
                ViewExtKt.safeThrottledClick$default(actionButton, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.dialog.FullscreenContentDialog$Companion$createDialog$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(View view) {
                        invoke2(view);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(View it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        AlertDialog.this.dismiss();
                        Callbacks$Callback callbacks$Callback2 = callbacks$Callback;
                        if (callbacks$Callback2 != null) {
                            callbacks$Callback2.invoke();
                        }
                    }
                }, 1, null);
            }
            Intrinsics.checkNotNullExpressionValue(dialog, "dialog");
            return dialog;
        }
    }
}
