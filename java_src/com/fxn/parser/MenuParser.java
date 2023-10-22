package com.fxn.parser;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import com.fxn.bubbletabbar.R$styleable;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MenuParser.kt */
/* loaded from: classes.dex */
public final class MenuParser {
    private final Context context;

    static {
        new Companion(null);
    }

    public MenuParser(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    /* compiled from: MenuParser.kt */
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final List<MenuItem> parse(int i) {
        XmlResourceParser layout = this.context.getResources().getLayout(i);
        Intrinsics.checkNotNullExpressionValue(layout, "context.resources.getLayout(menuRes)");
        AttributeSet attrs = Xml.asAttributeSet(layout);
        skipMenuTagStart(layout);
        Intrinsics.checkNotNullExpressionValue(attrs, "attrs");
        return parseMenu(layout, attrs);
    }

    private final void skipMenuTagStart(XmlResourceParser xmlResourceParser) {
        int eventType = xmlResourceParser.getEventType();
        while (eventType != 2) {
            eventType = xmlResourceParser.next();
            if (eventType == 1) {
                return;
            }
        }
        String name = xmlResourceParser.getName();
        if (Intrinsics.areEqual(name, AnalyticsEvent.OpenWalletScreen.sourceMenu)) {
            return;
        }
        throw new IllegalArgumentException(("Expecting menu, got " + name).toString());
    }

    private final List<MenuItem> parseMenu(XmlResourceParser xmlResourceParser, AttributeSet attributeSet) {
        ArrayList arrayList = new ArrayList();
        int eventType = xmlResourceParser.getEventType();
        boolean z = false;
        while (!z) {
            String name = xmlResourceParser.getName();
            if (eventType == 2 && Intrinsics.areEqual(name, "item")) {
                arrayList.add(parseMenuItem(attributeSet));
            } else if (eventType == 3 && Intrinsics.areEqual(name, AnalyticsEvent.OpenWalletScreen.sourceMenu)) {
                z = true;
            } else if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            eventType = xmlResourceParser.next();
        }
        return arrayList;
    }

    private final MenuItem parseMenuItem(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = this.context.obtainStyledAttributes(attributeSet, R$styleable.Bubble);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…ttrs, R.styleable.Bubble)");
        int resourceId = obtainStyledAttributes.getResourceId(R$styleable.Bubble_android_id, 0);
        CharSequence text = obtainStyledAttributes.getText(R$styleable.Bubble_android_title);
        int resourceId2 = obtainStyledAttributes.getResourceId(R$styleable.Bubble_android_icon, 0);
        boolean z = obtainStyledAttributes.getBoolean(R$styleable.Bubble_android_enabled, true);
        boolean z2 = obtainStyledAttributes.getBoolean(R$styleable.Bubble_android_checked, false);
        int color = obtainStyledAttributes.getColor(R$styleable.Bubble_android_iconTint, -65536);
        Intrinsics.checkNotNullExpressionValue(text, "getText(R.styleable.Bubble_android_title)");
        MenuItem menuItem = new MenuItem(resourceId, text, resourceId2, z, color, z2);
        obtainStyledAttributes.recycle();
        return menuItem;
    }
}
