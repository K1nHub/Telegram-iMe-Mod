package org.telegram.p042ui.Components.Premium;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Cells.FixedHeightEmptyCell;
import org.telegram.p042ui.Components.AvatarDrawable;
import org.telegram.p042ui.Components.BackupImageView;
import org.telegram.p042ui.Components.GradientTools;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.Premium.StoriesPageView;
import org.telegram.p042ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.Premium.StoriesPageView */
/* loaded from: classes6.dex */
public class StoriesPageView extends BaseListPageView {
    RecyclerListView.SelectionAdapter adapter;
    Bitmap bitmap;
    ArrayList<Item> items;

    public StoriesPageView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.items = new ArrayList<>();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Item(this, 1, C3630R.C3632drawable.msg_stories_order, LocaleController.getString("PremiumStoriesPriority", C3630R.string.PremiumStoriesPriority), LocaleController.getString("PremiumStoriesPriorityDescription", C3630R.string.PremiumStoriesPriorityDescription), 20));
        arrayList.add(new Item(this, 1, C3630R.C3632drawable.msg_stories_stealth, LocaleController.getString("PremiumStoriesStealth", C3630R.string.PremiumStoriesStealth), LocaleController.getString("PremiumStoriesStealthDescription", C3630R.string.PremiumStoriesStealthDescription), 15));
        arrayList.add(new Item(this, 1, C3630R.C3632drawable.msg_stories_views, LocaleController.getString("PremiumStoriesViews", C3630R.string.PremiumStoriesViews), LocaleController.getString("PremiumStoriesViewsDescription", C3630R.string.PremiumStoriesViewsDescription), 16));
        arrayList.add(new Item(this, 1, C3630R.C3632drawable.msg_stories_timer, LocaleController.getString("PremiumStoriesExpiration", C3630R.string.PremiumStoriesExpiration), LocaleController.getString("PremiumStoriesExpirationDescription", C3630R.string.PremiumStoriesExpirationDescription), 17));
        arrayList.add(new Item(this, 1, C3630R.C3632drawable.msg_stories_save, LocaleController.getString("PremiumStoriesSaveToGallery", C3630R.string.PremiumStoriesSaveToGallery), LocaleController.getString("PremiumStoriesSaveToGalleryDescription", C3630R.string.PremiumStoriesSaveToGalleryDescription), 18));
        arrayList.add(new Item(this, 1, C3630R.C3632drawable.msg_stories_caption, LocaleController.getString("PremiumStoriesCaption", C3630R.string.PremiumStoriesCaption), LocaleController.getString("PremiumStoriesCaptionDescription", C3630R.string.PremiumStoriesCaptionDescription), 21));
        arrayList.add(new Item(this, 1, C3630R.C3632drawable.msg_stories_link, LocaleController.getString("PremiumStoriesFormatting", C3630R.string.PremiumStoriesFormatting), LocaleController.getString("PremiumStoriesFormattingDescription", C3630R.string.PremiumStoriesFormattingDescription), 19));
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.Components.Premium.StoriesPageView$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$new$0;
                lambda$new$0 = StoriesPageView.lambda$new$0(MessagesController.this, (StoriesPageView.Item) obj, (StoriesPageView.Item) obj2);
                return lambda$new$0;
            }
        });
        this.items.add(new Item(0));
        this.items.addAll(arrayList);
        this.items.add(new Item(2));
        this.bitmap = Bitmap.createBitmap(this.items.size(), 1, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.bitmap);
        Paint paint = new Paint();
        paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, this.bitmap.getWidth(), (float) BitmapDescriptorFactory.HUE_RED, new int[]{Theme.getColor(Theme.key_premiumGradient1), Theme.getColor(Theme.key_premiumGradient2), Theme.getColor(Theme.key_premiumGradient3), Theme.getColor(Theme.key_premiumGradient4)}, (float[]) null, Shader.TileMode.CLAMP));
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.bitmap.getWidth(), this.bitmap.getHeight(), paint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$new$0(MessagesController messagesController, Item item, Item item2) {
        return messagesController.premiumFeaturesTypesToPosition.get(item.order, Integer.MAX_VALUE) - messagesController.premiumFeaturesTypesToPosition.get(item2.order, Integer.MAX_VALUE);
    }

    @Override // org.telegram.p042ui.Components.Premium.BaseListPageView
    public RecyclerView.Adapter createAdapter() {
        RecyclerListView.SelectionAdapter selectionAdapter = new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.Components.Premium.StoriesPageView.1
            @Override // org.telegram.p042ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return false;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View itemCell;
                if (i == 0) {
                    StoriesPageView storiesPageView = StoriesPageView.this;
                    itemCell = new HeaderView(storiesPageView, storiesPageView.getContext());
                } else if (i == 2) {
                    itemCell = new FixedHeightEmptyCell(StoriesPageView.this.getContext(), 16);
                } else {
                    StoriesPageView storiesPageView2 = StoriesPageView.this;
                    itemCell = new ItemCell(storiesPageView2, storiesPageView2.getContext());
                }
                itemCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(itemCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (StoriesPageView.this.items.get(i).viewType == 1) {
                    ItemCell itemCell = (ItemCell) viewHolder.itemView;
                    itemCell.imageView.setColorFilter(new PorterDuffColorFilter(StoriesPageView.this.bitmap.getPixel(i, 0), PorterDuff.Mode.MULTIPLY));
                    itemCell.imageView.setImageDrawable(ContextCompat.getDrawable(StoriesPageView.this.getContext(), StoriesPageView.this.items.get(i).iconRes));
                    itemCell.textView.setText(StoriesPageView.this.items.get(i).text);
                    itemCell.description.setText(StoriesPageView.this.items.get(i).description);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return StoriesPageView.this.items.get(i).viewType;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return StoriesPageView.this.items.size();
            }
        };
        this.adapter = selectionAdapter;
        return selectionAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.StoriesPageView$Item */
    /* loaded from: classes6.dex */
    public class Item {
        String description;
        int iconRes;
        int order;
        String text;
        final int viewType;

        private Item(StoriesPageView storiesPageView, int i) {
            this.viewType = i;
        }

        public Item(StoriesPageView storiesPageView, int i, int i2, String str, String str2, int i3) {
            this.viewType = i;
            this.iconRes = i2;
            this.text = str;
            this.description = str2;
            this.order = i3;
        }
    }

    /* renamed from: org.telegram.ui.Components.Premium.StoriesPageView$HeaderView */
    /* loaded from: classes6.dex */
    private class HeaderView extends FrameLayout {
        GradientTools gradientTools;
        BackupImageView imageView;

        public HeaderView(StoriesPageView storiesPageView, Context context) {
            super(context);
            this.gradientTools = new GradientTools();
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setRoundRadius((int) (AndroidUtilities.m102dp(65) / 2.0f));
            addView(this.imageView, LayoutHelper.createFrame(65, 65, 1, 0, 32, 0, 0));
            TLRPC$User currentUser = UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser();
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(currentUser);
            this.imageView.getImageReceiver().setForUserOrChat(currentUser, avatarDrawable);
            TextView textView = new TextView(context);
            textView.setTextSize(1, 20.0f);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, storiesPageView.resourcesProvider));
            textView.setText(LocaleController.getString("UpgradedStories", C3630R.string.UpgradedStories));
            addView(textView, LayoutHelper.createFrame(-2, -2, 1, 0, 111, 0, 0));
            GradientTools gradientTools = this.gradientTools;
            gradientTools.isLinear = true;
            gradientTools.isDiagonal = true;
            gradientTools.setColors(Theme.getColor(Theme.key_premiumGradient2), Theme.getColor(Theme.key_premiumGradient1));
            this.gradientTools.paint.setStyle(Paint.Style.STROKE);
            this.gradientTools.paint.setStrokeCap(Paint.Cap.ROUND);
            this.gradientTools.paint.setStrokeWidth(AndroidUtilities.dpf2(3.3f));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            BackupImageView backupImageView = this.imageView;
            Rect rect = AndroidUtilities.rectTmp2;
            backupImageView.getHitRect(rect);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(rect);
            rectF.inset(-AndroidUtilities.m102dp(5), -AndroidUtilities.m102dp(5));
            this.gradientTools.setBounds(rectF);
            float f = 360.0f / 7;
            for (int i = 0; i < 7; i++) {
                float f2 = (i * f) - 90.0f;
                float f3 = 5;
                float f4 = f2 + f3;
                canvas.drawArc(AndroidUtilities.rectTmp, f4, ((f2 + f) - f3) - f4, false, this.gradientTools.paint);
            }
            super.dispatchDraw(canvas);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), 1073741824));
        }
    }

    /* renamed from: org.telegram.ui.Components.Premium.StoriesPageView$ItemCell */
    /* loaded from: classes6.dex */
    private class ItemCell extends FrameLayout {
        TextView description;
        ImageView imageView;
        TextView textView;

        public ItemCell(StoriesPageView storiesPageView, Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            addView(this.imageView, LayoutHelper.createFrame(28, 28, 0, 25, 12, 16, 0));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, storiesPageView.resourcesProvider));
            this.textView.setTextSize(1, 14.0f);
            addView(this.textView, LayoutHelper.createFrame(-1, -2, 0, 68, 8, 16, 0));
            TextView textView2 = new TextView(context);
            this.description = textView2;
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, storiesPageView.resourcesProvider));
            this.description.setTextSize(1, 14.0f);
            addView(this.description, LayoutHelper.createFrame(-1, -2, 0, 68, 28, 16, 8));
        }
    }
}
