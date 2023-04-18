package com.iMe.p031ui.translate;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.widget.AppCompatTextView;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: PopupOptionsAdapter.kt */
/* renamed from: com.iMe.ui.translate.PopupOptionsAdapter */
/* loaded from: classes3.dex */
public final class PopupOptionsAdapter extends ArrayAdapter<String> {
    private final Context mContext;
    private final List<String> options;

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PopupOptionsAdapter(Context mContext, List<String> options) {
        super(mContext, C3242R.layout.fork_item_adapter_popup_option, options);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(options, "options");
        this.mContext = mContext;
        this.options = options;
    }

    /* compiled from: PopupOptionsAdapter.kt */
    /* renamed from: com.iMe.ui.translate.PopupOptionsAdapter$ViewHolder */
    /* loaded from: classes3.dex */
    public static final class ViewHolder {
        private final AppCompatTextView title;
        private final View view;

        public ViewHolder(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.view = view;
            View findViewById = view.findViewById(C3242R.C3245id.text_title);
            Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.text_title)");
            this.title = (AppCompatTextView) findViewById;
        }

        public final AppCompatTextView getTitle() {
            return this.title;
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup parent) {
        ViewHolder viewHolder;
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (view == null) {
            view = LayoutInflater.from(this.mContext).inflate(C3242R.layout.fork_item_adapter_popup_option, (ViewGroup) null, true);
            viewHolder = new ViewHolder(view);
            view.setTag(viewHolder);
        } else {
            Object tag = view.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.iMe.ui.translate.PopupOptionsAdapter.ViewHolder");
            viewHolder = (ViewHolder) tag;
        }
        viewHolder.getTitle().setText(this.options.get(i));
        viewHolder.getTitle().setTextColor(Theme.getColor("chat_messagePanelText"));
        Intrinsics.checkNotNull(view);
        return view;
    }
}
