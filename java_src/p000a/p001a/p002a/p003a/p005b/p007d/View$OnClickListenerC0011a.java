package p000a.p001a.p002a.p003a.p005b.p007d;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.widget.AppCompatTextView;
import com.binance.android.binancepay.R$id;
import com.binance.android.binancepay.R$layout;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: a.a.a.a.b.d.a */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0011a extends AppCompatDialog implements View.OnClickListener {

    /* renamed from: a */
    public InterfaceC0012a f10a;

    /* renamed from: b */
    public Button f11b;

    /* renamed from: c */
    public Button f12c;

    /* renamed from: d */
    public AppCompatTextView f13d;

    /* renamed from: e */
    public final String f14e;

    /* renamed from: f */
    public final String f15f;

    /* renamed from: a.a.a.a.b.d.a$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0012a {
        /* renamed from: a */
        void mo1159a(View view);

        /* renamed from: b */
        void mo1158b(View view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public View$OnClickListenerC0011a(Context context, String tip, String okBtnTxt) {
        super(context);
        Intrinsics.checkParameterIsNotNull(tip, "tip");
        Intrinsics.checkParameterIsNotNull(okBtnTxt, "okBtnTxt");
        this.f14e = tip;
        this.f15f = okBtnTxt;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        InterfaceC0012a interfaceC0012a;
        Intrinsics.checkParameterIsNotNull(v, "v");
        int id = v.getId();
        if (id == R$id.btn_ok) {
            InterfaceC0012a interfaceC0012a2 = this.f10a;
            if (interfaceC0012a2 != null) {
                interfaceC0012a2.mo1159a(v);
            }
        } else if (id != R$id.btn_cancel || (interfaceC0012a = this.f10a) == null) {
        } else {
            interfaceC0012a.mo1158b(v);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R$layout.binance_pay_dialog_common);
        View findViewById = findViewById(R$id.btn_ok);
        if (findViewById == null) {
            Intrinsics.throwNpe();
        }
        this.f11b = (Button) findViewById;
        View findViewById2 = findViewById(R$id.btn_cancel);
        if (findViewById2 == null) {
            Intrinsics.throwNpe();
        }
        this.f12c = (Button) findViewById2;
        View findViewById3 = findViewById(R$id.tv_content);
        if (findViewById3 == null) {
            Intrinsics.throwNpe();
        }
        this.f13d = (AppCompatTextView) findViewById3;
        Button button = this.f11b;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("confirmBtn");
        }
        button.setOnClickListener(this);
        Button button2 = this.f12c;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cancelBtn");
        }
        button2.setOnClickListener(this);
        Button button3 = this.f11b;
        if (button3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("confirmBtn");
        }
        button3.setText(this.f15f);
        AppCompatTextView appCompatTextView = this.f13d;
        if (appCompatTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentTv");
        }
        appCompatTextView.setText(this.f14e);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
    }
}
