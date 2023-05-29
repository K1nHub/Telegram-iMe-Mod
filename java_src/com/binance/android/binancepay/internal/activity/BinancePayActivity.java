package com.binance.android.binancepay.internal.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.binance.android.binancepay.R$string;
import com.binance.android.binancepay.api.BinancePay;
import com.binance.android.binancepay.api.BinancePayFactory;
import com.binance.android.binancepay.api.BinancePayListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import p000a.p001a.p002a.p003a.p004a.C0000a;
import p000a.p001a.p002a.p003a.p005b.EnumC0001a;
import p000a.p001a.p002a.p003a.p005b.p006c.C0003a;
import p000a.p001a.p002a.p003a.p005b.p006c.C0004b;
import p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0005a;
/* loaded from: classes.dex */
public final class BinancePayActivity extends AppCompatActivity {

    /* renamed from: b */
    public static final C0375a f56b = new C0375a();

    /* renamed from: a */
    public final BinancePay f57a = BinancePayFactory.Companion.getBinancePay(this);

    /* renamed from: com.binance.android.binancepay.internal.activity.BinancePayActivity$a */
    /* loaded from: classes.dex */
    public static final class C0375a {
    }

    /* renamed from: a */
    public final void m839a() {
        Locale local = Locale.getDefault();
        Intrinsics.checkExpressionValueIsNotNull(local, "local");
        String language = local.getLanguage();
        Locale locale = Locale.SIMPLIFIED_CHINESE;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.SIMPLIFIED_CHINESE");
        String str = Intrinsics.areEqual(language, locale.getLanguage()) ? "cn" : "en";
        Uri parse = Uri.parse("https://www.binance.com/" + str + "/download?link=y874_b842f3f4");
        Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(\"https://www.b…load?link=y874_b842f3f4\")");
        startActivity(new Intent("android.intent.action.VIEW", parse));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 20010) {
            if (i2 == -1) {
                BinancePayListener binancePayListener = this.f57a.getBinancePayListener();
                if (binancePayListener != null) {
                    binancePayListener.onSuccess();
                }
            } else {
                BinancePayListener binancePayListener2 = this.f57a.getBinancePayListener();
                if (binancePayListener2 != null) {
                    binancePayListener2.onCancel();
                }
            }
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        EnumC0001a enumC0001a;
        super.onCreate(bundle);
        int i = Intrinsics.areEqual(getIntent().getStringExtra("extra_key_api_type"), "c2c") ? 2 : 1;
        Intrinsics.checkParameterIsNotNull(this, "context");
        if (C0000a.m849a(this, "com.binance.dev")) {
            Intrinsics.checkParameterIsNotNull(this, "context");
            float f = BitmapDescriptorFactory.HUE_RED;
            try {
                f = getPackageManager().getApplicationInfo("com.binance.dev", 128).metaData.getFloat("binance.pay.sdk.version", BitmapDescriptorFactory.HUE_RED);
            } catch (Exception unused) {
            }
            enumC0001a = f < ((float) i) ? EnumC0001a.UnSupported : EnumC0001a.Supported;
        } else {
            enumC0001a = EnumC0001a.UnInstalled;
        }
        int ordinal = enumC0001a.ordinal();
        if (ordinal == 0) {
            try {
                Intent intent = new Intent();
                intent.putExtras(getIntent());
                intent.putExtra("extra_key_sdk_version", "1.1.0");
                intent.setClassName("com.binance.dev", "com.binance.dev.pay.BinancePaySDKEntryActivity");
                startActivityForResult(intent, 20010);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (ordinal == 1) {
            String string = getString(R$string.binance_pay_version_not_support);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.binan…_pay_version_not_support)");
            String string2 = getString(R$string.binance_pay_update);
            Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.binance_pay_update)");
            View$OnClickListenerC0005a view$OnClickListenerC0005a = new View$OnClickListenerC0005a(this, string, string2);
            C0004b btnClickListener = new C0004b(this, view$OnClickListenerC0005a);
            Intrinsics.checkParameterIsNotNull(btnClickListener, "btnClickListener");
            view$OnClickListenerC0005a.f10a = btnClickListener;
            view$OnClickListenerC0005a.setCancelable(false);
            view$OnClickListenerC0005a.show();
        } else if (ordinal != 2) {
        } else {
            String string3 = getString(R$string.binance_pay_not_install_tip);
            Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.binance_pay_not_install_tip)");
            String string4 = getString(R$string.binance_pay_install);
            Intrinsics.checkExpressionValueIsNotNull(string4, "getString(R.string.binance_pay_install)");
            View$OnClickListenerC0005a view$OnClickListenerC0005a2 = new View$OnClickListenerC0005a(this, string3, string4);
            C0003a btnClickListener2 = new C0003a(this, view$OnClickListenerC0005a2);
            Intrinsics.checkParameterIsNotNull(btnClickListener2, "btnClickListener");
            view$OnClickListenerC0005a2.f10a = btnClickListener2;
            view$OnClickListenerC0005a2.setCancelable(false);
            view$OnClickListenerC0005a2.show();
        }
    }
}
