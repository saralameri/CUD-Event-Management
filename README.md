### Key Features: 

1.	Aggregated Event Listings: The platform aggregates event listings from different societies within the university, providing a single point of access for students to discover upcoming events across various domains.
2.	User-Friendly Interface: The user interface is designed to be intuitive and user-friendly, enabling easy navigation and event discovery for students.
3.	Event Posting and Management: Organizers from different societies can easily post new events onto the platform. They have access to management tools for editing event details, managing registrations, and monitoring attendance.
4.	Registration Management: Students can register for events directly through the platform, streamlining the registration process. Organizers can track registrations and manage attendee lists efficiently.
5.	Elimination of Information Overload: By centralizing event information, the platform eliminates the need for students to monitor multiple communication channels such as scattered emails and WhatsApp groups. This reduces information overload and ensures that students stay informed about university events without missing out on important opportunities.
6.	Customized Event Categories: Events are categorized based on different themes or societies (Wellness, Gaming, Careers, etc.), allowing students to filter and browse events based on their interests.

### Install dependencies and fire up the application:

```bash
npm install      #Install all dependencies specified in package.json

npm run dev      #Start the development server with Vite

npx prisma migrate dev --name init     #Apply the defined schema to the database

npx prisma studio    #Browse the data in the database
```

### Key dependencies:

•	SvelteKit framework (@sveltejs/kit)

•	Prisma client (@prisma/client) and Prisma library (prisma)

•	TypeScript (typescript)

•	SQLite database (indirectly through Prisma)

•	Tailwind CSS (tailwindcss)

•	Svelte component checker (svelte-check)

•	Development utilities (autoprefixer, postcss, sv-popup, vite)

### Additional Setup:

•	TailwindCSS configuration: You can find detailed instructions and configuration options in the TailwindCSS documentation

•	You can use the Prisma schema to define tables, columns, relationships, etc. You can find the details in the Prisma documentation


