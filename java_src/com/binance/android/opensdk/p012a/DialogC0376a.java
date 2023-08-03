package com.binance.android.opensdk.p012a;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.binance.android.opensdk.R$id;
import com.binance.android.opensdk.R$layout;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.binance.android.opensdk.a.a */
/* loaded from: classes.dex */
public final class DialogC0376a extends Dialog {

    /* renamed from: a */
    private final Integer f60a;

    /* renamed from: b */
    private final int f61b;

    /* renamed from: c */
    private final Function0<Unit> f62c;

    /* renamed from: d */
    private final Function0<Unit> f63d;

    /* renamed from: com.binance.android.opensdk.a.a$a */
    /* loaded from: classes.dex */
    static final class View$OnClickListenerC0377a implements View.OnClickListener {
        View$OnClickListenerC0377a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogC0376a.this.dismiss();
            DialogC0376a.this.f62c.invoke();
        }
    }

    /* renamed from: com.binance.android.opensdk.a.a$b */
    /* loaded from: classes.dex */
    static final class View$OnClickListenerC0378b implements View.OnClickListener {
        View$OnClickListenerC0378b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogC0376a.this.dismiss();
            DialogC0376a.this.f63d.invoke();
        }
    }

    /* renamed from: com.binance.android.opensdk.a.a$c */
    /* loaded from: classes.dex */
    static final class View$OnClickListenerC0379c implements View.OnClickListener {
        View$OnClickListenerC0379c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogC0376a.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC0376a(Context context, Integer num, int i, Function0<Unit> loginWithAppAction, Function0<Unit> loginWithWebAction) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(loginWithAppAction, "loginWithAppAction");
        Intrinsics.checkParameterIsNotNull(loginWithWebAction, "loginWithWebAction");
        this.f60a = num;
        this.f61b = i;
        this.f62c = loginWithAppAction;
        this.f63d = loginWithWebAction;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        setContentView(R$layout.binance_opensdk_dialog);
        Integer num = this.f60a;
        if (num != null) {
            int intValue = num.intValue();
            TextView tvContent = (TextView) findViewById(R$id.tvContent);
            Intrinsics.checkExpressionValueIsNotNull(tvContent, "tvContent");
            tvContent.setText(getContext().getString(intValue));
        }
        int i = R$id.tvDownloadApp;
        TextView tvDownloadApp = (TextView) findViewById(i);
        Intrinsics.checkExpressionValueIsNotNull(tvDownloadApp, "tvDownloadApp");
        tvDownloadApp.setText(getContext().getString(this.f61b));
        ((TextView) findViewById(i)).setOnClickListener(new View$OnClickListenerC0377a());
        ((TextView) findViewById(R$id.tvLoginWeb)).setOnClickListener(new View$OnClickListenerC0378b());
        ((TextView) findViewById(R$id.tvClose)).setOnClickListener(new View$OnClickListenerC0379c());
    }
}
