package com.stripe.android.model;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;
/* loaded from: classes6.dex */
public class Token {
    public static final String TYPE_CARD = "card";
    private final Card mCard;
    private final Date mCreated;
    private final String mId;
    private final boolean mLivemode;
    private final String mType;
    private final boolean mUsed;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface TokenType {
    }

    public Token(String str, boolean z, Date date, Boolean bool, Card card, String str2) {
        this.mId = str;
        this.mType = str2;
        this.mCreated = date;
        this.mLivemode = z;
        this.mCard = card;
        this.mUsed = bool.booleanValue();
    }

    public Date getCreated() {
        return this.mCreated;
    }

    public String getId() {
        return this.mId;
    }

    public boolean getLivemode() {
        return this.mLivemode;
    }

    public boolean getUsed() {
        return this.mUsed;
    }

    public String getType() {
        return this.mType;
    }

    public Card getCard() {
        return this.mCard;
    }
}
