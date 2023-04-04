package com.stripe.android.model;

import com.stripe.android.util.DateUtils;
import com.stripe.android.util.StripeTextUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes4.dex */
public class Card {
    public static final String AMERICAN_EXPRESS = "American Express";
    public static final String DINERS_CLUB = "Diners Club";
    public static final String DISCOVER = "Discover";
    public static final String FUNDING_CREDIT = "credit";
    public static final String FUNDING_DEBIT = "debit";
    public static final String FUNDING_PREPAID = "prepaid";
    public static final String FUNDING_UNKNOWN = "unknown";
    public static final String JCB = "JCB";
    public static final String MASTERCARD = "MasterCard";
    public static final int MAX_LENGTH_AMERICAN_EXPRESS = 15;
    public static final int MAX_LENGTH_DINERS_CLUB = 14;
    public static final int MAX_LENGTH_STANDARD = 16;
    public static final String UNKNOWN = "Unknown";
    public static final String VISA = "Visa";
    private String addressCity;
    private String addressCountry;
    private String addressLine1;
    private String addressLine2;
    private String addressState;
    private String addressZip;
    private String brand;
    private String country;
    private String currency;
    private String cvc;
    private Integer expMonth;
    private Integer expYear;
    private String fingerprint;
    private String funding;
    private String last4;
    private String name;
    private String number;
    public static final String[] PREFIXES_AMERICAN_EXPRESS = {"34", "37"};
    public static final String[] PREFIXES_DISCOVER = {"60", "62", "64", "65"};
    public static final String[] PREFIXES_JCB = {"35"};
    public static final String[] PREFIXES_DINERS_CLUB = {"300", "301", "302", "303", "304", "305", "309", "36", "38", "39"};
    public static final String[] PREFIXES_VISA = {"4"};
    public static final String[] PREFIXES_MASTERCARD = {"2221", "2222", "2223", "2224", "2225", "2226", "2227", "2228", "2229", "223", "224", "225", "226", "227", "228", "229", "23", "24", "25", "26", "270", "271", "2720", "50", "51", "52", "53", "54", "55"};

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface CardBrand {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface FundingType {
    }

    /* loaded from: classes4.dex */
    public static class Builder {
        private String addressCity;
        private String addressCountry;
        private String addressLine1;
        private String addressLine2;
        private String addressState;
        private String addressZip;
        private String brand;
        private String country;
        private String currency;
        private final String cvc;
        private final Integer expMonth;
        private final Integer expYear;
        private String fingerprint;
        private String funding;
        private String last4;
        private String name;
        private final String number;

        public Builder(String str, Integer num, Integer num2, String str2) {
            this.number = str;
            this.expMonth = num;
            this.expYear = num2;
            this.cvc = str2;
        }

        public Builder name(String str) {
            this.name = str;
            return this;
        }

        public Builder addressLine1(String str) {
            this.addressLine1 = str;
            return this;
        }

        public Builder addressLine2(String str) {
            this.addressLine2 = str;
            return this;
        }

        public Builder addressCity(String str) {
            this.addressCity = str;
            return this;
        }

        public Builder addressState(String str) {
            this.addressState = str;
            return this;
        }

        public Builder addressZip(String str) {
            this.addressZip = str;
            return this;
        }

        public Builder addressCountry(String str) {
            this.addressCountry = str;
            return this;
        }

        public Builder brand(String str) {
            this.brand = str;
            return this;
        }

        public Builder fingerprint(String str) {
            this.fingerprint = str;
            return this;
        }

        public Builder funding(String str) {
            this.funding = str;
            return this;
        }

        public Builder country(String str) {
            this.country = str;
            return this;
        }

        public Builder currency(String str) {
            this.currency = str;
            return this;
        }

        public Builder last4(String str) {
            this.last4 = str;
            return this;
        }

        public Card build() {
            return new Card(this);
        }
    }

    public Card(String str, Integer num, Integer num2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
        this.number = StripeTextUtils.nullIfBlank(normalizeCardNumber(str));
        this.expMonth = num;
        this.expYear = num2;
        this.cvc = StripeTextUtils.nullIfBlank(str2);
        this.name = StripeTextUtils.nullIfBlank(str3);
        this.addressLine1 = StripeTextUtils.nullIfBlank(str4);
        this.addressLine2 = StripeTextUtils.nullIfBlank(str5);
        this.addressCity = StripeTextUtils.nullIfBlank(str6);
        this.addressState = StripeTextUtils.nullIfBlank(str7);
        this.addressZip = StripeTextUtils.nullIfBlank(str8);
        this.addressCountry = StripeTextUtils.nullIfBlank(str9);
        this.brand = StripeTextUtils.asCardBrand(str10) == null ? getBrand() : str10;
        this.last4 = StripeTextUtils.nullIfBlank(str11) == null ? getLast4() : str11;
        this.fingerprint = StripeTextUtils.nullIfBlank(str12);
        this.funding = StripeTextUtils.asFundingType(str13);
        this.country = StripeTextUtils.nullIfBlank(str14);
        this.currency = StripeTextUtils.nullIfBlank(str15);
    }

    public Card(String str, Integer num, Integer num2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        this(str, num, num2, str2, str3, str4, str5, str6, str7, str8, str9, null, null, null, null, null, str10);
    }

    public Card(String str, Integer num, Integer num2, String str2) {
        this(str, num, num2, str2, null, null, null, null, null, null, null, null, null, null, null, null, null);
    }

    public boolean validateCard() {
        return this.cvc == null ? validateNumber() && validateExpiryDate() : validateNumber() && validateExpiryDate() && validateCVC();
    }

    public boolean validateNumber() {
        if (StripeTextUtils.isBlank(this.number)) {
            return false;
        }
        String replaceAll = this.number.trim().replaceAll("\\s+|-", "");
        if (!StripeTextUtils.isBlank(replaceAll) && StripeTextUtils.isWholePositiveNumber(replaceAll) && isValidLuhnNumber(replaceAll)) {
            String brand = getBrand();
            return AMERICAN_EXPRESS.equals(brand) ? replaceAll.length() == 15 : DINERS_CLUB.equals(brand) ? replaceAll.length() == 14 : replaceAll.length() == 16;
        }
        return false;
    }

    public boolean validateExpiryDate() {
        if (validateExpMonth() && validateExpYear()) {
            return !DateUtils.hasMonthPassed(this.expYear.intValue(), this.expMonth.intValue());
        }
        return false;
    }

    public boolean validateCVC() {
        if (StripeTextUtils.isBlank(this.cvc)) {
            return false;
        }
        String trim = this.cvc.trim();
        String brand = getBrand();
        return StripeTextUtils.isWholePositiveNumber(trim) && ((brand == null && trim.length() >= 3 && trim.length() <= 4) || ((AMERICAN_EXPRESS.equals(brand) && trim.length() == 4) || trim.length() == 3));
    }

    public boolean validateExpMonth() {
        Integer num = this.expMonth;
        return num != null && num.intValue() >= 1 && this.expMonth.intValue() <= 12;
    }

    public boolean validateExpYear() {
        Integer num = this.expYear;
        return (num == null || DateUtils.hasYearPassed(num.intValue())) ? false : true;
    }

    public String getNumber() {
        return this.number;
    }

    @Deprecated
    public void setNumber(String str) {
        this.number = str;
        this.brand = null;
        this.last4 = null;
    }

    public String getCVC() {
        return this.cvc;
    }

    @Deprecated
    public void setCVC(String str) {
        this.cvc = str;
    }

    public Integer getExpMonth() {
        return this.expMonth;
    }

    @Deprecated
    public void setExpMonth(Integer num) {
        this.expMonth = num;
    }

    public Integer getExpYear() {
        return this.expYear;
    }

    @Deprecated
    public void setExpYear(Integer num) {
        this.expYear = num;
    }

    public String getName() {
        return this.name;
    }

    @Deprecated
    public void setName(String str) {
        this.name = str;
    }

    public String getAddressLine1() {
        return this.addressLine1;
    }

    @Deprecated
    public void setAddressLine1(String str) {
        this.addressLine1 = str;
    }

    public String getAddressLine2() {
        return this.addressLine2;
    }

    @Deprecated
    public void setAddressLine2(String str) {
        this.addressLine2 = str;
    }

    public String getAddressCity() {
        return this.addressCity;
    }

    @Deprecated
    public void setAddressCity(String str) {
        this.addressCity = str;
    }

    public String getAddressZip() {
        return this.addressZip;
    }

    @Deprecated
    public void setAddressZip(String str) {
        this.addressZip = str;
    }

    public String getAddressState() {
        return this.addressState;
    }

    @Deprecated
    public void setAddressState(String str) {
        this.addressState = str;
    }

    public String getAddressCountry() {
        return this.addressCountry;
    }

    @Deprecated
    public void setAddressCountry(String str) {
        this.addressCountry = str;
    }

    public String getCurrency() {
        return this.currency;
    }

    @Deprecated
    public void setCurrency(String str) {
        this.currency = str;
    }

    public String getLast4() {
        if (!StripeTextUtils.isBlank(this.last4)) {
            return this.last4;
        }
        String str = this.number;
        if (str == null || str.length() <= 4) {
            return null;
        }
        String str2 = this.number;
        String substring = str2.substring(str2.length() - 4, this.number.length());
        this.last4 = substring;
        return substring;
    }

    @Deprecated
    public String getType() {
        return getBrand();
    }

    public String getBrand() {
        String str;
        if (StripeTextUtils.isBlank(this.brand) && !StripeTextUtils.isBlank(this.number)) {
            if (StripeTextUtils.hasAnyPrefix(this.number, PREFIXES_AMERICAN_EXPRESS)) {
                str = AMERICAN_EXPRESS;
            } else if (StripeTextUtils.hasAnyPrefix(this.number, PREFIXES_DISCOVER)) {
                str = DISCOVER;
            } else if (StripeTextUtils.hasAnyPrefix(this.number, PREFIXES_JCB)) {
                str = JCB;
            } else if (StripeTextUtils.hasAnyPrefix(this.number, PREFIXES_DINERS_CLUB)) {
                str = DINERS_CLUB;
            } else if (StripeTextUtils.hasAnyPrefix(this.number, PREFIXES_VISA)) {
                str = VISA;
            } else {
                str = StripeTextUtils.hasAnyPrefix(this.number, PREFIXES_MASTERCARD) ? MASTERCARD : UNKNOWN;
            }
            this.brand = str;
        }
        return this.brand;
    }

    public String getFingerprint() {
        return this.fingerprint;
    }

    public String getFunding() {
        return this.funding;
    }

    public String getCountry() {
        return this.country;
    }

    private Card(Builder builder) {
        String str;
        String str2;
        this.number = StripeTextUtils.nullIfBlank(normalizeCardNumber(builder.number));
        this.expMonth = builder.expMonth;
        this.expYear = builder.expYear;
        this.cvc = StripeTextUtils.nullIfBlank(builder.cvc);
        this.name = StripeTextUtils.nullIfBlank(builder.name);
        this.addressLine1 = StripeTextUtils.nullIfBlank(builder.addressLine1);
        this.addressLine2 = StripeTextUtils.nullIfBlank(builder.addressLine2);
        this.addressCity = StripeTextUtils.nullIfBlank(builder.addressCity);
        this.addressState = StripeTextUtils.nullIfBlank(builder.addressState);
        this.addressZip = StripeTextUtils.nullIfBlank(builder.addressZip);
        this.addressCountry = StripeTextUtils.nullIfBlank(builder.addressCountry);
        if (StripeTextUtils.nullIfBlank(builder.last4) != null) {
            str = builder.last4;
        } else {
            str = getLast4();
        }
        this.last4 = str;
        if (StripeTextUtils.asCardBrand(builder.brand) != null) {
            str2 = builder.brand;
        } else {
            str2 = getBrand();
        }
        this.brand = str2;
        this.fingerprint = StripeTextUtils.nullIfBlank(builder.fingerprint);
        this.funding = StripeTextUtils.asFundingType(builder.funding);
        this.country = StripeTextUtils.nullIfBlank(builder.country);
        this.currency = StripeTextUtils.nullIfBlank(builder.currency);
    }

    private boolean isValidLuhnNumber(String str) {
        boolean z = true;
        int i = 0;
        for (int length = str.length() - 1; length >= 0; length--) {
            char charAt = str.charAt(length);
            if (!Character.isDigit(charAt)) {
                return false;
            }
            int parseInt = Integer.parseInt("" + charAt);
            z ^= true;
            if (z) {
                parseInt *= 2;
            }
            if (parseInt > 9) {
                parseInt -= 9;
            }
            i += parseInt;
        }
        return i % 10 == 0;
    }

    private String normalizeCardNumber(String str) {
        if (str == null) {
            return null;
        }
        return str.trim().replaceAll("\\s+|-", "");
    }
}
