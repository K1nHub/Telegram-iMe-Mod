package org.solovyev.android.checkout;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public final class Sku {

    /* renamed from: id */
    public final C3156Id f1350id;
    private String mDisplayTitle;
    public final String price;
    public final String title;

    Sku(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        this.f1350id = new C3156Id(str2, jSONObject.getString("productId"));
        this.price = jSONObject.getString("price");
        Price.regularPriceFromJson(jSONObject);
        this.title = jSONObject.getString("title");
        jSONObject.optString("description");
        jSONObject.optString("subscriptionPeriod");
        jSONObject.optString("introductoryPrice");
        Price.introductoryPriceFromJson(jSONObject);
        jSONObject.optString("freeTrialPeriod");
        jSONObject.optString("introductoryPricePeriod");
        jSONObject.optInt("introductoryPriceCycles");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Sku fromJson(String str, String str2) throws JSONException {
        return new Sku(str, str2);
    }

    private static String makeDisplayTitle(String str) {
        int indexOfAppName;
        return TextUtils.isEmpty(str) ? "" : (str.charAt(str.length() + (-1)) == ')' && (indexOfAppName = indexOfAppName(str)) > 0) ? str.substring(0, indexOfAppName).trim() : str;
    }

    private static int indexOfAppName(String str) {
        int i = 0;
        for (int length = str.length() - 1; length >= 0; length--) {
            char charAt = str.charAt(length);
            if (charAt == ')') {
                i++;
            } else if (charAt == '(') {
                i--;
            }
            if (i == 0) {
                return length;
            }
        }
        return -1;
    }

    public String toString() {
        return this.f1350id + "{" + getDisplayTitle() + ", " + this.price + "}";
    }

    public String getDisplayTitle() {
        if (this.mDisplayTitle == null) {
            this.mDisplayTitle = makeDisplayTitle(this.title);
        }
        return this.mDisplayTitle;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Sku.class != obj.getClass()) {
            return false;
        }
        return this.f1350id.equals(((Sku) obj).f1350id);
    }

    public int hashCode() {
        return this.f1350id.hashCode();
    }

    /* renamed from: org.solovyev.android.checkout.Sku$Id */
    /* loaded from: classes4.dex */
    public static final class C3156Id {
        public final String code;
        public final String product;

        public C3156Id(String str, String str2) {
            this.product = str;
            this.code = str2;
        }

        public String toString() {
            return this.product + "/" + this.code;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C3156Id.class != obj.getClass()) {
                return false;
            }
            C3156Id c3156Id = (C3156Id) obj;
            if (this.product.equals(c3156Id.product)) {
                return this.code.equals(c3156Id.code);
            }
            return false;
        }

        public int hashCode() {
            return (this.product.hashCode() * 31) + this.code.hashCode();
        }
    }

    /* loaded from: classes4.dex */
    public static final class Price {
        public static final Price EMPTY = new Price(0, "");
        public final long amount;
        public final String currency;

        public Price(long j, String str) {
            this.amount = j;
            this.currency = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Price regularPriceFromJson(JSONObject jSONObject) throws JSONException {
            long optLong = jSONObject.optLong("price_amount_micros");
            String optString = jSONObject.optString("price_currency_code");
            if (optLong == 0 || TextUtils.isEmpty(optString)) {
                return EMPTY;
            }
            return new Price(optLong, optString);
        }

        protected static Price introductoryPriceFromJson(JSONObject jSONObject) throws JSONException {
            long optLong = jSONObject.optLong("introductoryPriceAmountMicros");
            String optString = jSONObject.optString("price_currency_code");
            if (optLong == 0 || TextUtils.isEmpty(optString)) {
                return EMPTY;
            }
            return new Price(optLong, optString);
        }

        public String toString() {
            return this.currency + this.amount;
        }
    }
}
