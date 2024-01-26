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
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import p000a.p001a.p002a.p003a.p004a.C0006a;
import p000a.p001a.p002a.p003a.p005b.EnumC0007a;
import p000a.p001a.p002a.p003a.p005b.p006c.C0009a;
import p000a.p001a.p002a.p003a.p005b.p006c.C0010b;
import p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0011a;
@Metadata(m157bv = {1, 0, 3}, m156d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\fB\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m155d2 = {"Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "", "goDownloadPage", "payWithClient", "showInstallDialog", "showUnSupportDialog", "Lcom/binance/android/binancepay/api/BinancePay;", "binancePay", "Lcom/binance/android/binancepay/api/BinancePay;", "<init>", "()V", "Companion", "pay_release"}, m154k = 1, m153mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class BinancePayActivity extends AppCompatActivity {

    /* renamed from: b */
    public static final C0379a f58b = new C0379a();

    /* renamed from: a */
    public final BinancePay f59a = BinancePayFactory.Companion.getBinancePay(this);

    /* renamed from: com.binance.android.binancepay.internal.activity.BinancePayActivity$a */
    /* loaded from: classes.dex */
    public static final class C0379a {
    }

    /* renamed from: a */
    public final void m1150a() {
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
                BinancePayListener binancePayListener = this.f59a.getBinancePayListener();
                if (binancePayListener != null) {
                    binancePayListener.onSuccess();
                }
            } else {
                BinancePayListener binancePayListener2 = this.f59a.getBinancePayListener();
                if (binancePayListener2 != null) {
                    binancePayListener2.onCancel();
                }
            }
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        EnumC0007a enumC0007a;
        super.onCreate(bundle);
        int i = Intrinsics.areEqual(getIntent().getStringExtra("extra_key_api_type"), "c2c") ? 2 : 1;
        Intrinsics.checkParameterIsNotNull(this, "context");
        if (C0006a.m1160a(this, "com.binance.dev")) {
            Intrinsics.checkParameterIsNotNull(this, "context");
            float f = BitmapDescriptorFactory.HUE_RED;
            try {
                f = getPackageManager().getApplicationInfo("com.binance.dev", 128).metaData.getFloat("binance.pay.sdk.version", BitmapDescriptorFactory.HUE_RED);
            } catch (Exception unused) {
            }
            enumC0007a = f < ((float) i) ? EnumC0007a.UnSupported : EnumC0007a.Supported;
        } else {
            enumC0007a = EnumC0007a.UnInstalled;
        }
        int ordinal = enumC0007a.ordinal();
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
            View$OnClickListenerC0011a view$OnClickListenerC0011a = new View$OnClickListenerC0011a(this, string, string2);
            C0010b btnClickListener = new C0010b(this, view$OnClickListenerC0011a);
            Intrinsics.checkParameterIsNotNull(btnClickListener, "btnClickListener");
            view$OnClickListenerC0011a.f10a = btnClickListener;
            view$OnClickListenerC0011a.setCancelable(false);
            view$OnClickListenerC0011a.show();
        } else if (ordinal != 2) {
        } else {
            String string3 = getString(R$string.binance_pay_not_install_tip);
            Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.binance_pay_not_install_tip)");
            String string4 = getString(R$string.binance_pay_install);
            Intrinsics.checkExpressionValueIsNotNull(string4, "getString(R.string.binance_pay_install)");
            View$OnClickListenerC0011a view$OnClickListenerC0011a2 = new View$OnClickListenerC0011a(this, string3, string4);
            C0009a btnClickListener2 = new C0009a(this, view$OnClickListenerC0011a2);
            Intrinsics.checkParameterIsNotNull(btnClickListener2, "btnClickListener");
            view$OnClickListenerC0011a2.f10a = btnClickListener2;
            view$OnClickListenerC0011a2.setCancelable(false);
            view$OnClickListenerC0011a2.show();
        }
    }
}
